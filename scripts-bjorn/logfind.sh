#!/bin/bash

# To scan all pods of an application for files in /tmp, possibly with filter search, and possibly dump content

name=$1
find=${2:-""}
namespace=$3
dump=0
pod_index=-1
force_debug=0

if [[ -z "$1" || "$1" == "-h" || "$1" == "--help" ]]; then
  echo "Usage: $0 <app-name> [search-term] <namespace> [--dump] [--pod N] [--force-debug/-x]"
  exit 0
fi

# Parse flags
args=()
while (( "$#" )); do
  case "$1" in
    --dump)
      dump=1
      shift
      ;;
    --pod)
      pod_index=$(( $2 - 1 ))
      shift 2
      ;;
    --force-debug|-x)
      force_debug=1
      shift
      ;;
    *)
      args+=("$1")
      shift
      ;;
  esac
done

name=${args[0]}
find=${args[1]:-""}
namespace=${args[2]:-""}

if [ -z "$namespace" ]; then
  namespace=$(kubectl config view --minify --output 'jsonpath={..namespace}')
  if [ -z "$namespace" ]; then
    namespace="default"
  fi
fi

currentcontext=$(kubectl config current-context)
echo "Context: $currentcontext"
echo "Namespace: $namespace"
echo "App/Container: $name"
echo "File match: ${find:-<All>}"
if [[ $pod_index -ge 0 ]]; then
  echo "Pod index: $((pod_index + 1))"
else
  echo "Pod index: All"
fi

podnames=$(kubectl get pods --namespace="$namespace" --no-headers -o custom-columns=":metadata.name" | grep "$name")
if [ -z "$podnames" ]; then
  echo "❌ No pods found matching '$name' in namespace '$namespace'"
  exit 1
fi

pod_array=()
while IFS= read -r line; do
  pod_array+=("$line")
done <<< "$podnames"

count=${#pod_array[@]}
total_count=$count

if [[ $pod_index -ge 0 && $pod_index -lt $count ]]; then
  pod_array=("${pod_array[$pod_index]}")
  count=1
fi

i=1
for podname in "${pod_array[@]}"; do
  echo "----- Checking pod replica $((pod_index >= 0 ? pod_index + 1 : i))/$total_count: $podname -----"

  # Try direct exec
  if [[ "$force_debug" -eq 0 ]] && kubectl exec "$podname" -c "$name" --namespace="$namespace" -- ls /tmp >/dev/null 2>&1; then
    echo "✅ Using direct exec on pod $podname"
    files=$(kubectl exec "$podname" -c "$name" --namespace="$namespace" -- ls /tmp)
    ephemeral_used=0
  else
    echo "⚠️ Injecting ephemeral debug container into Pod '$podname'..."

    # Start ephemeral debug container in background
    debug_output=$(kubectl debug "$podname" \
      --image="europe-north1-docker.pkg.dev/nais-io/nais/images/debug:latest" \
      --target="$name" --profile=restricted \
      --custom=<(echo '{"volumeMounts":[{"mountPath":"/tmp","name":"writable-tmp"}]}') \
      --namespace="$namespace" \
      -- bash -c 'sleep 60' &)

    echo "direct $debug_output"
    EPHEMERAL_CONTAINER=$(echo "$debug_output" | grep -o 'debugger-[a-z0-9]\{5\}' | tail -1)
    echo "Captured container:$EPHEMERAL_CONTAINER"

    printf "⏳ Waiting on debug container to run: ["
    for attempt in {1..100}; do
      state=$(kubectl get pod "$podname" --namespace="$namespace" \
        -o jsonpath="{.status.ephemeralContainerStatuses[?(@.name==\"$EPHEMERAL_CONTAINER\")].state.running}")

      if [[ -n "$state" ]]; then
        printf "] ✅ \n"
        break
      fi

      printf "%%"
      sleep 0.25
    done

    if [[ -z "$EPHEMERAL_CONTAINER" ]]; then
      echo "❌ Failed to inject debug container on pod $podname"
      ((i++))
      continue
    fi

    files=$(kubectl exec "$podname" -c "$EPHEMERAL_CONTAINER" --namespace="$namespace" -- ls /tmp)

    if [ $? -ne 0 ] || [ -z "$files" ]; then
      echo "⚠️  No files found in /tmp or failed to list contents in ephemeral container on pod $podname"
      ((i++))
      continue
    fi
    ephemeral_used=1
  fi

  if [ -n "$find" ]; then
    filtered_files=$(echo "$files" | grep -- "$find" || true)
  else
    filtered_files=$files
  fi

  if [ -z "$filtered_files" ]; then
    echo "No matching files found."
  else
    echo "Files found:"
    echo "$filtered_files"
    if [ $dump -eq 1 ]; then
      for file in $filtered_files; do
        echo "---- Content of /tmp/$file ----"
        if [ "$ephemeral_used" -eq 0 ]; then
          kubectl exec "$podname" -c "$name" --namespace="$namespace" -- cat "/tmp/$file" 2>/dev/null || echo "❌ Failed to cat file"
        else
          kubectl exec "$podname" -c "$EPHEMERAL_CONTAINER" --namespace="$namespace" -- cat "/tmp/$file" 2>/dev/null || echo "❌ Failed to cat file from ephemeral container"
        fi
        echo ""
        echo "------------------------------"
      done
    fi
  fi

  ((i++))
done

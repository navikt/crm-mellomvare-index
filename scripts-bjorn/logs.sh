#!/bin/bash

# Look up logs for a pod (by order not knowing exact generated pod-name)

print_usage() {
  echo "Usage: $0 <container-name> [namespace] [pod-index] [-f] [-c]"
  echo
  echo "Positional arguments:"
  echo "  container-name    Name of the container to get logs from (required)"
  echo "  namespace         Kubernetes namespace (optional, defaults to current context namespace)"
  echo "  pod-index         Which pod to target if multiple pods match (optional, defaults to 1)"
  echo
  echo "Flags:"
  echo "  -f, --follow      Follow log output (like tail -f)"
  echo "  -c, --color       Colorize log output (may slow down output)"
  echo
  exit 1
}

if [[ $# -lt 1 ]]; then
  echo "Error: container name required."
  print_usage
fi

name=$1
shift

namespace=""
podindex=1
follow_flag=""
color_flag=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    -f|--follow)
      follow_flag="-f"
      shift
      ;;
    -c|--color)
      color_flag="true"
      shift
      ;;
    *)
      if [[ -z "$namespace" ]]; then
        namespace="$1"
      elif [[ "$podindex" -eq 1 ]]; then
        podindex="$1"
      else
        echo "Unknown argument: $1"
        print_usage
      fi
      shift
      ;;
  esac
done

# Set namespace default if empty
if [[ -z "$namespace" ]]; then
  namespace=$(kubectl config view --minify --output 'jsonpath={..namespace}')
  namespace=${namespace:-default}
fi

colorize_logs() {
  local RED='\033[0;31m'
  local YELLOW='\033[0;33m'
  local GREEN='\033[0;32m'
  local RESET='\033[0m'

  while IFS= read -r line; do
    if echo "$line" | grep -q '"level":"ERROR"'; then
      echo -e "${RED}ERROR${RESET} ${line}"
    elif echo "$line" | grep -q '"level":"WARN"'; then
      echo -e "${YELLOW}WARN${RESET} ${line}"
    elif echo "$line" | grep -q '"level":"INFO"'; then
      echo -e "${GREEN}INFO${RESET} ${line}"
    else
      echo "$line"
    fi
  done
}

echo "📦 Context: $(kubectl config current-context)"
echo "📛 Namespace: $namespace"

count=$(kubectl get pods --namespace="$namespace" | grep -c "$name")
if [[ $count -eq 0 ]]; then
  echo "❌ No pods found matching name '$name' in namespace '$namespace'"
  exit 1
fi

podrow=$(kubectl get pods --namespace="$namespace" | grep "$name" | sed -n "${podindex}p")
podname=${podrow%% *}

if [[ -z "$podname" ]]; then
  echo "❌ Pod index $podindex out of range. Found $count pods."
  exit 1
fi

echo "📍 Attaching to pod: $podname ($podindex/$count)"

if [[ "$color_flag" == "true" ]]; then
  kubectl logs $follow_flag "$podname" -c "$name" --namespace="$namespace" | colorize_logs
else
  kubectl logs $follow_flag "$podname" -c "$name" --namespace="$namespace"
fi

echo "🪞 In replica $podindex/$count - $podname"

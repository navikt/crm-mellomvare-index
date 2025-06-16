#!/bin/bash

# To enter a debug container attached to pod (to look at /tmp files, or to use nslookup to see whats visible etc)

set -e

# Colors
YELLOW="\033[1;33m"
GREEN="\033[1;32m"
RED="\033[0;31m"
RESET="\033[0m"

print_usage() {
  echo -e "${YELLOW}Usage:${RESET}"
  echo "  $0 <app-name> [namespace] [pod-index]"
  echo
  echo -e "${YELLOW}Examples:${RESET}"
  echo "  $0 simtest"
  echo "  $0 simtest teamcrm"
  echo "  $0 simtest 2"
  echo "  $0 simtest teamcrm 2"
  echo
  echo "Defaults:"
  echo "- Namespace: from current kubectl context"
  echo "- Pod index: 1 (most recent matching pod)"
}

# --- Parse Arguments ---
if [[ -z "$1" || "$1" == "-h" || "$1" == "--help" ]]; then
  print_usage
  exit 1
fi

name=$1
arg2=$2
arg3=$3

# Determine namespace and pod index
if [[ -z "$arg2" ]]; then
  namespace=$(kubectl config view --minify --output 'jsonpath={..namespace}')
  podindex=1
elif [[ "$arg2" =~ ^[0-9]+$ ]]; then
  namespace=$(kubectl config view --minify --output 'jsonpath={..namespace}')
  podindex=$arg2
else
  namespace=$arg2
  podindex=${arg3:-1}
fi

# Show context and namespace
currentcontext=$(kubectl config current-context)
echo -e "${GREEN}Context:${RESET} $currentcontext"
echo -e "${GREEN}Namespace:${RESET} $namespace"

# --- Validate Application Existence ---
if ! kubectl get application "$name" -n "$namespace" >/dev/null 2>&1; then
  echo -e "${RED}❌ No NAIS Application named '${name}' found in namespace '${namespace}'${RESET}"
  echo "Use: kubectl get application -n $namespace"
  exit 1
fi

# --- List and select pods ---
podlist=$(kubectl get pods -n "$namespace" --no-headers | grep "$name" || true)
count=$(echo "$podlist" | wc -l | tr -d '[:space:]')

if [[ "$count" -eq 0 ]]; then
  echo -e "${RED}❌ No pods found for app '${name}' in namespace '${namespace}'${RESET}"
  exit 1
fi

if [[ "$podindex" -gt "$count" ]]; then
  echo -e "${RED}❌ Pod index $podindex is out of range (only $count pods found)${RESET}"
  exit 1
fi

podrow=$(echo "$podlist" | tail -n +"$podindex" | head -n 1)
podname=${podrow%% *}

echo -e "${GREEN}Attaching debug container to pod:${RESET} $podname ($podindex/$count)"

# --- Start ephemeral debug container ---
kubectl debug -it "$podname" \
  -n "$namespace" \
  --image="europe-north1-docker.pkg.dev/nais-io/nais/images/debug:latest" \
  --target="$name" \
  --profile=restricted \
  --custom=<(echo '{"volumeMounts":[{"mountPath":"/tmp","name":"writable-tmp"}]}') \
  -- /bin/bash

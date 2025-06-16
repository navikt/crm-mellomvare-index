#!/bin/bash

# Script: rescale.sh
# Usage: ./rescale.sh <app_name> <desired_pods>
# This script patches a Kubernetes application to rescale the min/max replica count to the desired number of pods.
# Use to pause an application by rescaling to 0 for example

# Check if the number of arguments is correct
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <app_name> <desired_pods>"
  exit 1
fi

# Assign variables
APP_NAME=$1
DESIRED_PODS=$2

# Validate that the desired pods is a number
if ! [[ "$DESIRED_PODS" =~ ^[0-9]+$ ]]; then
  echo "Error: Desired pods must be a number"
  exit 1
fi

# Apply the kubectl patch to rescale the application
kubectl patch app "$APP_NAME" --type json -p="[
  {\"op\": \"replace\", \"path\": \"/spec/replicas/min\", \"value\": $DESIRED_PODS},
  {\"op\": \"replace\", \"path\": \"/spec/replicas/max\", \"value\": $DESIRED_PODS}
]"

# Check if the command succeeded
if [ $? -eq 0 ]; then
  echo "Successfully scaled $APP_NAME to $DESIRED_PODS replicas."
else
  echo "Failed to scale $APP_NAME. Please check the application name and permissions."
fi
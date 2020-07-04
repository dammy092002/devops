#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=dammy092002/udacity

# Step 2
# Run the Docker Hub container with kubernetes
sudo kubectl run devops-deployment --image=$dockerpath:devops

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward devops-deployment 8000:80


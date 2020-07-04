#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=dammy092002/udacity

# Step 2:  
# Authenticate & tag
#echo "Docker ID and Image: $dockerpath"
sudo docker login
#sudo docker tag hello-world $dockerpath:hello-world
sudo docker tag devops $dockerpath:devops

# Step 3:
# Push image to a docker repository
sudo docker push $dockerpath:devops

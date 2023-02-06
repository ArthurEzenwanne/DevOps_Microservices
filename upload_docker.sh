#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=arthurezenwanne/ml-microservice-k8

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag ml-microservice-k8 $dockerpath
docker login --username arthurezenwanne

# Step 3:
# Push image to a docker repository
docker push $dockerpath

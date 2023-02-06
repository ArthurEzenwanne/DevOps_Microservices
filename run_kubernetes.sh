#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=arthurezenwanne/ml-microservice-k8


# Step 2
# Run the Docker Hub container with kubernetes
minikube kubectl -- run predict-app --image=$dockerpath --port=80
# kubectl run PredictApp --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
minikube kubectl -- get pods
# kubectl get pods

# Step 4:
# Forward the container port to a host, ensure pods are up
sleep 120
minikube kubectl -- port-forward predict-app 8000:80 
# kubectl port-forward PredictApp 8000:80
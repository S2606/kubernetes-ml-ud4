#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=shgun/udaproj

# Step 2:  
# Authenticate & tag
export DOCKER_ID_USER="shgun"
docker login
docker tag udaproj $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest
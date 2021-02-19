#!/usr/bin/env bash

set -eou pipefail

# DOCKER_USERNAME="${DOCKER_USERNAME}"
# DOCKER_PASSWORD="${DOCKER_PASSWORD}"

# REGISTRY=""
# OWNER=""

# IMAGE_NAME="hello-github-docker-action"
# IMAGE_TAG="v1.0.0-beta.0"

docker tag "${IMAGE_NAME}:${IMAGE_TAG}" "${REGISTRY}/${OWNER}/${IMAGE_NAME}:${IMAGE_TAG}"
docker tag "${IMAGE_NAME}:${IMAGE_TAG}" "${REGISTRY}/${OWNER}/${IMAGE_NAME}:latest"

docker push "${REGISTRY}/${OWNER}/${IMAGE_NAME}:${IMAGE_TAG}"
docker push "${REGISTRY}/${OWNER}/${IMAGE_NAME}:latest"

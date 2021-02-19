#!/usr/bin/env bash

set -eou pipefail

# DOCKER_FILE=".config/docker/Dockerfile"
# DOCKER_BUILD_PATH="."
#
# IMAGE_NAME="hello-github-docker-action"
# IMAGE_TAG="v1.0.0-beta.0"

docker build \
  -t "${IMAGE_NAME}:${IMAGE_TAG}" \
  -f "${DOCKER_FILE}" \
  "${DOCKER_BUILD_PATH}"

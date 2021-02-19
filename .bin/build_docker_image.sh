#!/usr/bin/env bash

set -eo pipefail

if [[ -z "${DOCKER_FILE}" ]]; then
  DOCKER_FILE=".config/docker/Dockerfile"
fi

if [[ -z "${DOCKER_BUILD_PATH}" ]]; then
  DOCKER_BUILD_PATH="."
fi

IMAGE_NAME="hello-github-docker-action"
IMAGE_TAG="v1.0.0-beta.0"

docker build \
  -t "${IMAGE_NAME}:${IMAGE_TAG}" \
  -f "${DOCKER_FILE}" \
  "${DOCKER_BUILD_PATH}"

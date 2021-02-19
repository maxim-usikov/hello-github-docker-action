#!/usr/bin/env bash

set -eou pipefail

IMAGE_NAME=$(echo "${GITHUB_REPOSITORY}" | tr '[A-Z]' '[a-z]')
IMAGE_TAG=$(echo "${GITHUB_REF}" | sed -e 's,.*/\(.*\),\1,')

echo IMAGE_NAME=$IMAGE_NAME
echo IMAGE_TAG=$IMAGE_TAG

exit 1

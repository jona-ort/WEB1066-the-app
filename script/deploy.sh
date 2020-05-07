#!/usr/bin/env bash
set -e
echo ${DOCKER_PASSWORD} | docker login --username ${DOCKER_USER} --password-stdin
docker tag the_app jonaort/gcp-training-ci-1:$(git rev-parse HEAD)
docker push jonaort/the-app:$(git rev-parse HEAD)

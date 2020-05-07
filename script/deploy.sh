#!/usr/bin/env bash
set -e
echo "login..."
echo ${DOCKER_PASSWORD} | docker login --username ${DOCKER_USER} --password-stdin
echo "tag..."
docker tag the_app jonaort/gcp-training-ci-1:$(git rev-parse HEAD)
echo "push..."
docker push jonaort/the-app:$(git rev-parse HEAD)
echo "done"

#!/bin/bash

GIT_REPO=$1
DOCKER_REPO=$2

git clone "https://github.com/${GIT_REPO}.git"

cd "$(basename "$GIT_REPO")"

docker build -t "${DOCKER_REPO}" .
docker login
docker image push "${DOCKER_REPO}"

cd ..
rm -rf "$(basename "$GIT_REPO")"
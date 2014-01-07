#!/bin/bash

set -e

IMAGE="localhost:5000/tools/centos-buildtools"

docker build -t ${IMAGE} .
docker push ${IMAGE}

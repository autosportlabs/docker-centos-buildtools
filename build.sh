#!/bin/bash

set -e

IMAGE="zardoz.podzone.org:11003/tools/centos-buildtools"

docker build -rm -t ${IMAGE} .
docker push ${IMAGE}

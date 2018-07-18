#!/bin/bash

builder_image=quay.io/gbengataylor/springboot-openjdk8-gradle-s2i:1.0
runtime_image=quay.io/gbengataylor/springboot-openjdk8-gradle-runtime-s2i:1.0

echo "Build builder image..."
docker build . -t ${builder_image} && \
echo "Build runtime image..." 
docker build -f Dockerfile.runtime . -t ${runtime_image} && \
echo "push BUILDER image..." 
docker push ${builder_image} && \
echo "push RUNTIME image..."
docker push ${runtime_image}

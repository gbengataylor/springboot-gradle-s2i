#!/bin/bash

# https://github.com/openshift/source-to-image/blob/master/docs/cli.md#s2i-build

source_location=./sample-app
builder_image=quay.io/gbengataylor/springboot-openjdk8-gradle-s2i:1.0
tag=sample-app-gradle:1.0
flags=-c  

s2i build ${source_location} ${builder_image} ${tag} ${flags} # --incremental=true &&

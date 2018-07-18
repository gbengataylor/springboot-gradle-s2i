#!/bin/bash

tag=sample-app-runtime-only-gradle:1.0
port=8080

#detach on run, remove on exit
docker run -d --rm -p ${port}:${port} ${tag}

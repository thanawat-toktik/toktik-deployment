#!/bin/bash

docker run \
    -p "6381:6379" \
    -d \
    redis:alpine

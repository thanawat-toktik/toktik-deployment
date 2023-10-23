#!/bin/bash

docker run \
    -p "5673:5672" \
    -p "15673:15672" \
    -d \
    rabbitmq:management-alpine

docker run \
    -p "6381:6379" \
    -d \
    redis:alpine

#!/bin/bash

docker run \
    -p "5673:5672" \
    -p "15673:15672" \
    -d \
    rabbitmq:management-alpine

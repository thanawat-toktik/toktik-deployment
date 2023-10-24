#!/bin/bash

if [ ! $(docker volume ls | grep -q "postgres-vol") ]; then
    docker volume create "postgres-vol"
fi
docker run -d -p 5433:5432 \
    --env POSTGRES_USER=postgres \
    --env POSTGRES_PASSWORD=password \
    --env POSTGRES_DB=postgres \
    -v postgres-vol:/var/lib/postgresql/data \
    postgres:alpine

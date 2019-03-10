#!/bin/bash

# a lazy docker build and push wrapper
docker build -t kyrick/sample-app:latest . -f dockerfiles/prod/Dockerfile
docker push kyrick/sample-app:latest
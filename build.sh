#!/bin/bash

TAG=${1:-latest}

docker build --force-rm=true --rm=true -t camunda/camunda-platform-distro:${TAG} .

#!/bin/bash

TAG=${1:-tomcat-7.1.0}

docker build --force-rm=true --rm=true -t camunda/camunda-platform-distro:${TAG} .

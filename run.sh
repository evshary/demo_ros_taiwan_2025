#!/bin/bash

DOCKER_FILE=Dockerfile
DOCKER_IMAGE=demo_ros_taiwan_2025

if [ ! "$(docker images -q ${DOCKER_IMAGE})" ]; then
    echo "${DOCKER_IMAGE} does not exist. Creating..."
    docker build -f ${DOCKER_FILE} -t ${DOCKER_IMAGE} .
fi

xhost +local:
docker run -it --privileged --rm \
        -e QT_X11_NO_MITSHM=1 -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix/:/tmp/.X11-unix \
        ${DOCKER_IMAGE}

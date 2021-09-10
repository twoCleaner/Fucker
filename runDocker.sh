#!/bin/bash

docker build -t fucker .

docker run -it --name code-server -p 0.0.0.0:8080:8080 \
  -v "$HOME/.config:/home/coder/.config" \
  -v "$PWD:/home/coder/project" \
  -u "$(id -u):$(id -g)" \
  -e "DOCKER_USER=$USER" \
  -d \
  fucker



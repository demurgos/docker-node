#!/usr/bin/env bash
# Exit on error and echo
set -ex
xhost local:docker && docker run -it -e DISPLAY -v $HOME/.Xauthority:/home/root/.Xauthority --net=host demurgos/node:11

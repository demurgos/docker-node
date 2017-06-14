#!/usr/bin/env bash
# Exit on error
set -e
# Echo and run
CMD="xhost local:docker && docker run -it -e DISPLAY -v $HOME/.Xauthority:/home/root/.Xauthority --net=host demurgos/node:7" && echo "$CMD" && eval "$CMD"

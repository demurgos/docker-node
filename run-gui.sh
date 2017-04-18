#!/usr/bin/env bash
xhost local:docker && docker run -it -e DISPLAY -v $HOME/.Xauthority:/home/root/.Xauthority --net=host "demurgos/node:7"

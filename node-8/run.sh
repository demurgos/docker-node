#!/usr/bin/env bash
# Exit on error
set -e
# Echo and run
CMD="docker run -it demurgos/node:8" && echo "$CMD" && eval "$CMD"

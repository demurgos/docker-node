#!/usr/bin/env bash
# Exit on error
set -e
# Echo and run
CMD="docker run -it demurgos/node:10" && echo "$CMD" && eval "$CMD"

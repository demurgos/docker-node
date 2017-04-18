FROM node:7
MAINTAINER Charles Samborski <demurgos@demurgos.net>

RUN apt-get update \
  && apt-get install --no-install-recommends --assume-yes \
  expect \
  && rm -rf /var/lib/apt/lists/*

RUN npm install --global gulp-cli typings

CMD [ "node" ]

FROM node:14.4
MAINTAINER Charles Samborski <demurgos@demurgos.net>

RUN apt-get update \
  && apt-get install --no-install-recommends --assume-yes \
  apt-transport-https \
  && rm -rf /var/lib/apt/lists/*

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update \
  && apt-get install --no-install-recommends --assume-yes \
  expect \
  jq \
  yarn \
  && rm -rf /var/lib/apt/lists/*

RUN curl --proto "=https" --tlsv1.2 -sSf https://sh.rustup.rs > ./rustup-init.sh \
  && chmod +x ./rustup-init.sh
  && ./rustup-init.sh -y --no-modify-path --profile minimal --default-toolchain nightly \
  && rm ./rustup-init.sh

RUN node --version \
  && npm --version \
  && yarn --version \
  && rustup --version \
  && cargo --version \
  && rustc --version

CMD [ "node" ]

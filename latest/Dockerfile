FROM alpine:3.12.3
MAINTAINER Charles Samborski <demurgos@demurgos.net>

# TODO: Remove this command once Node 14 is available in stable Alpine
RUN sed -i -e 's/v[[:digit:]]\..*\//edge\//g' /etc/apk/repositories

RUN apk add --no-cache nodejs yarn

RUN apk add --no-cache curl \
  && curl --proto "=https" --tlsv1.2 -sSf https://sh.rustup.rs > ./rustup-init.sh \
  && chmod +x ./rustup-init.sh \
  && ./rustup-init.sh -y --profile minimal --default-toolchain stable --component rustfmt --component clippy \
  && rm ./rustup-init.sh \
  && apk del --purge curl

ENV PATH=/root/.cargo/bin:$PATH

RUN apk add --no-cache build-base openssl-dev \
  && cargo install sccache

RUN rm -rf "~/.cargo/registry/cache/" "~/.cargo/registry/index/" "~/.cargo/git/db/"

CMD ["/bin/sh"]

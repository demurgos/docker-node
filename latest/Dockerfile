FROM alpine:3.12.3
MAINTAINER Charles Samborski <demurgos@demurgos.net>

RUN apk add --no-cache nodejs yarn

RUN apk add --no-cache curl \
  && curl --proto "=https" --tlsv1.2 -sSf https://sh.rustup.rs > ./rustup-init.sh \
  && chmod +x ./rustup-init.sh \
  && ./rustup-init.sh -y --profile minimal --default-toolchain stable --component rusfmt --component clippy \
  && rm ./rustup-init.sh \
  && apk del --purge curl

ENV PATH=/root/.cargo/bin:$PATH

RUN apk add --no-cache build-base openssl-dev
RUN cargo install sccache
RUN apk del --purge build-base openssl-dev

CMD ["/bin/sh"]

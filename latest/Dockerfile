FROM alpine:3.20.3
LABEL org.opencontainers.image.authors="Charles Samborski <demurgos@demurgos.net>"

RUN apk add --no-cache build-base

RUN apk add --no-cache nodejs yarn

RUN apk add --no-cache curl \
  && curl --proto "=https" --tlsv1.2 -sSf https://sh.rustup.rs > ./rustup-init.sh \
  && chmod +x ./rustup-init.sh \
  && ./rustup-init.sh -y --profile minimal --default-toolchain stable --component rustfmt --component clippy \
  && rm ./rustup-init.sh \
  && apk del --purge curl

ENV PATH=/root/.cargo/bin:$PATH

RUN apk add --no-cache curl \
  && mkdir -p /opt/sccache \
  && curl -L https://github.com/mozilla/sccache/releases/download/v0.8.1/sccache-v0.8.1-x86_64-unknown-linux-musl.tar.gz \
    | tar -xz --to-stdout "sccache-v0.8.1-x86_64-unknown-linux-musl/sccache" > /opt/sccache/sccache \
  && chmod +x /opt/sccache/sccache \
  && apk del --purge curl

ENV PATH=/opt/sccache:$PATH

CMD ["/bin/sh"]

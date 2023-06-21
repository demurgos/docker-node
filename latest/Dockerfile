FROM alpine:3.18.2
MAINTAINER Charles Samborski <demurgos@demurgos.net>

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
  && curl -L https://github.com/mozilla/sccache/releases/download/v0.5.3/sccache-v0.5.3-x86_64-unknown-linux-musl.tar.gz \
    | tar -xz --to-stdout "sccache-v0.5.3-x86_64-unknown-linux-musl/sccache" > /opt/sccache/sccache \
  && chmod +x /opt/sccache/sccache \
  && apk del --purge curl

ENV PATH=/opt/sccache:$PATH

RUN apk add --no-cache curl \
  && rustup target add wasm32-unknown-unknown \
  && mkdir -p /opt/wasm-bindgen \
  && curl -L https://github.com/rustwasm/wasm-bindgen/releases/download/0.2.87/wasm-bindgen-0.2.87-x86_64-unknown-linux-musl.tar.gz \
    | tar -xz --to-stdout "wasm-bindgen-0.2.87-x86_64-unknown-linux-musl/wasm-bindgen" > /opt/wasm-bindgen/wasm-bindgen \
  && chmod +x /opt/wasm-bindgen/wasm-bindgen \
  && apk del --purge curl

ENV PATH=/opt/wasm-bindgen:$PATH

# Rerequired for `proc-macro2`
RUN apk add --no-cache build-base

CMD ["/bin/sh"]

FROM archlinux:latest
MAINTAINER Charles Samborski <demurgos@demurgos.net>

# Packages (for Flash development with Haxe)
# Utils: git, coreutils (provides `timeout` and `true`), expect
# Haxe compilation: camlp4, gcc (provides `as`), make, neko, ocaml, pcre, zlib
# Flash dev: firefox, flashplugin, xorg-server-xvfb
RUN pacman -Syu --quiet --noconfirm --noprogressbar \
  && pacman -S --quiet --noconfirm --noprogressbar \
    # Base
    base \
    base-devel \
    coreutils \
    fakeroot \
    sudo \
    # Utils
    expect \
    ffmpeg \
    git \
    jq \
    # # Haxe
    # camlp4 \
    # gcc \
    # make \
    # neko \
    # ocaml \
    # pcre \
    # zlib \
    # # Flash
    # flashplugin \
    # xorg-server-xvfb \
    # Node
    nodejs \
    yarn \
    # Rust (also includes cargo, clippy and rustfmt)
    rust \
    sccache \
  && pacman -Sc --quiet --noconfirm

CMD ["/bin/bash"]

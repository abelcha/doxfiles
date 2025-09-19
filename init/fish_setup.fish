#!/usr/bin/env fish

set -e

rustup default stable
cargo install cargo-binstall
cargo binstall -y amber cargo-binstall cargo-cache cargo-sweep cargo-watch cfspeedtest coreutils genson-rs jfmt ssd-benchmark stdrename teehee xcp 
# cargo install --git https://github.com/will-lynas/lnx
# cargo install --git https://github.com/abelcha/bat

mkdir -p ~/.ssh
chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys



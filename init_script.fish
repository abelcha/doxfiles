#!/usr/bin/env fish

cd /me

/bin/bash -c "export NONINTERACTIVE=1; $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install go choose-rust aria2 rclone xh atuin axel pueue bat-extras bkt broot btop caddy cmake codex coreutils csvlens dprint duckdb eza fd git helix hexyl htop jless jwt-cli killport less massren moreutils ncdu neovim ouch sd sevenzip sk unar uutils-coreutils uv volta abhimanyu003/sttr/sttr tidwall/jj/jj oven-sh/bun/bun
brew install bfs chroma cloudflared fx fzf gh glow go-task gum litecli mods eget


git config --global user.email "abel@example.com"
git config --global user.name "abel"
git config --global credential.helper store

sudo rm -fr /me/.config

mv doxfiles .config
ln -s /me/.config /me/config


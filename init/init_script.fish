#!/usr/bin/env fish

cd /me

/bin/bash -c "export NONINTERACTIVE=1; $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install (cat brew-dependencies.txt)

git config --global user.email "abel@example.com"
git config --global user.name abel
git config --global credential.helper store

sudo rm -fr /me/.config

mv doxfiles .config
ln -s /me/.config /me/config

#!/bin/sh

set -e

cd /me

git config --global user.email "abel@example.com"
git config --global user.name "abel"
git config --global credential.helper store

sudo rm -fr /me/.config

git clone https://github.com/abelcha/doxfiles
mv doxfiles .config
ln -s /me/.config /me/config

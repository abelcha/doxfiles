#!/bin/sh
set -e
useradd -m -G wheel -s /bin/bash abel
echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
chsh -s /usr/bin/fish abel

mkdir /mods
mkdir /mods/data
mkdir /mods/data/fish
mkdir /mods/bin
chown -R abel:abel /mods
ln -s  /home/abel /me

mkdir -p /home/abel/.config/fish 
ln -s  /home/abel/.config/fish /fish

#!/bin/sh
set -e

pacman -Syu --noconfirm
pacman -Sy --noconfirm sudo base-devel which fish rustup procps-ng curl file git wget ripgrep

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

git clone https://github.com/abelcha/doxfiles /home/abel/doxfiles
chown -R abel:abel /home/abel/doxfiles
sudo -u abel /home/abel/doxfiles/init_script.fish


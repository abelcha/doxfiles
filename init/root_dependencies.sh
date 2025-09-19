#!/bin/sh
set -e
pacman -Syu --noconfirm
pacman -Sy --noconfirm sudo base-devel which fish rustup procps-ng curl file git wget ripgrep
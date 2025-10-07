#!/bin/bash

set -e

echo -e "\n---\n"
echo "Installing system packages..."
export DEBIAN_FRONTEND=noninteractive
apt-get update && apt-get install -y --no-install-recommends \
    curl \
    wget \
    ca-certificates \
    gnupg \
    sudo \
    bash \
    zsh \
    unzip \
    git \
    tmux \
    neovim \
    btop \
    fd-find \
    silversearcher-ag \
    ripgrep \
    zoxide \
    fzf \
    jq \
    ncdu \
    nload \
    golang-go \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*


echo -e "\n---\n"
echo "Applying dotfiles via chezmoi..."
sh -c "$(curl -fsLS get.chezmoi.io)"
chezmoi init https://github.com/nilh2a2/dotfiles.git
chezmoi apply

echo -e "\n---\n"
echo "Installing Yazi..."
curl -L "https://github.com/sxyazi/yazi/releases/download/v25.5.31/yazi-x86_64-unknown-linux-gnu.zip" -o yazi.zip
unzip yazi.zip
mv yazi-x86_64-unknown-linux-gnu/yazi /usr/local/bin/
mv yazi-x86_64-unknown-linux-gnu/ya /usr/local/bin/
rm -rf yazi.zip yazi-x86_64-unknown-linux-gnu
ya pkg install

echo -e "\n---\n"
echo "Installing happy-coder..."
npm install -g happy-coder

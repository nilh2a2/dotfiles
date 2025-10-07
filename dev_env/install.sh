#!/bin/bash

set -e

export DEBIAN_FRONTEND=noninteractive

echo "Installing development tools..."

# Install system packages
echo "Installing system packages..."
apt-get update && apt-get install -y --no-install-recommends \
    curl \
    ca-certificates \
    gnupg \
    sudo \
    bash \
    unzip \
    btop \
    fd-find \
    fzf \
    golang-go \
    jq \
    ncdu \
    neovim \
    nload \
    nodejs \
    npm \
    ripgrep \
    silversearcher-ag \
    wget \
    zoxide \
    && rm -rf /var/lib/apt/lists/*

# Install Yazi
echo "Installing Yazi..."
YAZI_VERSION="0.2.5"
curl -L "https://github.com/sxyazi/yazi/releases/download/v${YAZI_VERSION}/yazi-x86_64-unknown-linux-gnu.zip" -o yazi.zip
unzip yazi.zip
mv yazi-x86_64-unknown-linux-gnu/yazi /usr/local/bin/
mv yazi-x86_64-unknown-linux-gnu/ya /usr/local/bin/
rm -rf yazi.zip yazi-x86_64-unknown-linux-gnu

# Install aichat
echo "Installing aichat..."
AICHAT_VERSION="0.30.0"
curl -L "https://github.com/sigoden/aichat/releases/download/v${AICHAT_VERSION}/aichat-v${AICHAT_VERSION}-x86_64-unknown-linux-musl.tar.gz" -o aichat.tar.gz
tar -xzf aichat.tar.gz
mv aichat /usr/local/bin/
rm -rf aichat.tar.gz

# Install happy-coder
npm install -g happy-coder

# Apply dotfiles
echo "Applying dotfiles via chezmoi..."
sh -c "$(curl -fsLS chezmoi.io/get)" -- init --apply nilh2a2

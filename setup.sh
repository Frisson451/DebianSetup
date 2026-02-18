#!/bin/bash

# Update package list
echo "updating packages"
sudo apt update && upgrade -y
#packages to be installed
sudo apt install -y git curl htop zsh

#installing openssh
echo "installing openssh"
sudo apt install openssh-client -y
sudo apt install openssh-server -y
sudo systemctl enable ssh

#installing homebrew
echo "installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" -y
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"


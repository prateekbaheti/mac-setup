#!/usr/bin/env bash

xcode-select --install

export PATH="$HOME/Library/Python/3.8/bin:/opt/homebrew/bin:$PATH"
sudo pip3 install --upgrade pip
pip3 install ansible

echo "Installing required roles for ansible"
ansible-galaxy install -r requirements.yml

echo "Installing apps"
ansible-playbook main.yml --ask-become-pass

echo "Installing ohmyzsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
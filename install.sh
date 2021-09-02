#!/usr/bin/env bash

xcode-select --install

echo "Installing ansible"
brew install ansible

echo "Installing required roles for ansible"
ansible-galaxy install -r requirements.yml

echo "Installing ohmyzsh"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing apps"
ansible-playbook main.yml --ask-become-pass

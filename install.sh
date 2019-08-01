#!/usr/bin/env bash

echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/cask

echo "Installing ansible"
brew install ansible

echo "Installing required roles for ansible"
ansible-galaxy install -r requirements.yml

echo "Installing ohmyzsh"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing apps"
ansible-playbook main.yml --ask-become-pass

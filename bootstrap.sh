#!/bin/bash

# Git
rm ~/.gitconfig ~/.gitignore_global ~/.nanorc
ln -s $PWD/.gitconfig ~/.gitconfig
ln -s $PWD/.gitignore_global ~/.gitignore_global
ln -s $PWD/.nanorc ~/.nanorc

# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

export PATH=/opt/homebrew/bin:$PATH

# Update
brew update > /dev/null;

# Install all from Brewfile
brew bundle

# Clean
brew cleanup

# Install Oh My Zsh
rm -rf ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Linking dotfiles to home directory
rm ~/.zshrc
ln -s $PWD/.zshrc ~/.zshrc

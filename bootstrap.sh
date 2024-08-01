#!/bin/bash

if type xcode-select >&- && xpath=$( xcode-select --print-path ) &&
   test -d "${xpath}" && test -x "${xpath}";
then
   echo "Command Line Tools already Installed"
else
   sudo rm -rf /Library/Developer/CommandLineTools
   sudo xcode-select --install
fi

# Git
rm ~/.gitconfig ~/.gitignore_global
ln -s $PWD/.gitconfig ~/.gitconfig
ln -s $PWD/.gitignore_global ~/.gitignore_global
ln -s $PWD/.nanorc ~/.nanorc

# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
rm ~/.zprofile
ln -s $PWD/.zprofile ~/.zprofile

export PATH=/opt/homebrew/bin:$PATH

# Update
brew update > /dev/null;

# Install all from Brewfile
brew bundle

# Clean
brew cleanup

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

if [ ! -d ~/.nvm ]; then
    mkdir ~/.nvm
fi

# Linking dotfiles to home directory
rm ~/.zshrc
ln -s $PWD/.zshrc ~/.zshrc

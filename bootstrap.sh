# Brew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew bundle
brew cleanup && brew cask cleanup

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mkdir ~/.nvm

# Linking dotfiles
rm ~/.gitconfig ~/.gitignore_global ~/.zshrc
ln -s $PWD/.gitconfig ~/.gitconfig
ln -s $PWD/.gitignore_global ~/.gitignore_global
ln -s $PWD/.zshrc ~/.zshrc
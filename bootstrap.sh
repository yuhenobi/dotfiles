# Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew bundle
brew cleanup

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Linking dotfiles
rm ~/.gitconfig
ln -s $PWD/.gitconfig ~/.gitconfig

rm ~/.gitignore_global
ln -s $PWD/.gitignore_global ~/.gitignore_global

rm ~/.zshrc
ln -s $PWD/.zshrc ~/.zshrc
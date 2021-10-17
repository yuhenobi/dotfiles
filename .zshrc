# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/Users/yuhenobi/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-completions zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ll="ls -lah"
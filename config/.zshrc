export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
HIST_STAMPS="dd.mm.yyyy"
plugins=(gitfast tmux aws)

source $ZSH/oh-my-zsh.sh

alias vim="nvim"
alias vi="nvim"
alias vimdiff="nvim -d"

export ZSH=/Users/lbyte00/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git last-working-dir postgres zsh-syntax-highlighting command-not-found)

fpath=(/usr/local/share/zsh-completions $fpath)

# User configuration
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
export EDITOR=vim
source $ZSH/oh-my-zsh.sh

# Golang
export GOROOT="/usr/local/Cellar/go/1.9.2/libexec"
export GOPATH="/Users/lbyte00/Developer/golang"
export PATH="$GOPATH/bin:$PATH"

# Shortcuts
export WALLESTER="$GOPATH/src/github.com/wallester"

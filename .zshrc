export ZSH=/Users/lbyte00/.oh-my-zsh

ZSH_THEME="robbyrussell"
ZSH_DISABLE_COMPFIX="true"

plugins=(git last-working-dir postgres zsh-syntax-highlighting command-not-found)

fpath=(/usr/local/share/zsh-completions $fpath)

# User configuration
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
export EDITOR=vim
source $ZSH/oh-my-zsh.sh

# Golang
export GOROOT="/usr/local/Cellar/go/1.13.1/libexec"
export GOPATH="/Users/lbyte00/Developer/go"
export PATH="$GOPATH/bin:$PATH"

# Python
export PATH="$PATH:$HOME/Library/Python/2.7/bin/"

# Shortcuts
export WALLESTER="$GOPATH/src/github.com/wallester"
export LBYTE="$GOPATH/src/github.com/lbyte00"
export HTDOCS="/Applications/XAMPP/xamppfiles/htdocs"
export DOWNLOADS="$HOME/Downloads"
export DEVELOPER="$HOME/Developer"
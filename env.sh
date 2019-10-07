#!/bin/zsh

# Add commonly used folders to $PATH
#export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=vim

# File search functions
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# Create a folder and move into it in one command
function mkcd() { mkdir -p "$@" && cd "$_"; }

fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

fh() {
  eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}

es(){

}

refCache(){
  cf login -a https://api.run-zb.homedepot.com -u
  echo -n "Enter the value of variable 'var1': "
# The -n option to echo suppresses newline.

 read var1
 echo $var1

}

# Example aliases
alias cppcompile='c++ -std=c++11 -stdlib=libc++'
alias g='git'
alias gcob='git checkout -b'
alias gco='git checkout'

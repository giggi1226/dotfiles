export PATH="/usr/local/bin:$PATH"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
eval "$(pyenv init -)"

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

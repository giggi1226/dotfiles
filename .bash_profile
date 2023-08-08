export PATH="/usr/local/opt/avr-gcc@8/bin:/usr/local/bin:$PATH"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
eval "$(pyenv init -)"

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

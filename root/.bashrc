# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# BEGIN LW_STTY:
tty_dev=$(tty | awk '/\/dev\/ttyS/ {print $1}')
if [[ ${tty_dev} == *tty* ]] ; then
  stty -F ${tty_dev} icrnl
  set +o history
  trap $(sync) EXIT
fi
# END LW_STTY:

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

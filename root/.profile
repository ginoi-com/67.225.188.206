# 2025-03-25 Dmitrii Fediuk https://www.upwork.com/fl/mage2pro
export PS1='\[\e[01;33m\]\w\n\[\e[01;31m\]\$ \[\e[00m\]'
umask 022
eval "`dircolors`"
alias ...='cd ../..'
alias ..='cd ..'
alias l='ls $LS_OPTIONS -lA'
alias ll='ls $LS_OPTIONS -l'
alias ls='ls $LS_OPTIONS'
alias s='ssh -l root'
export EDITOR="vim"
export HISTCONTROL="ignoreboth"
export HISTFILESIZE=99999999
export HISTSIZE=99999999
export LS_OPTIONS='--color=auto -h'
export TERM=xterm-256color
mesg n 2> /dev/null || true

# 2025-03-25 Dmitrii Fediuk https://www.upwork.com/fl/mage2pro
# This code was added by Liquid Web.
# It is used only for sessions attached to real or virtual serial console devices
# (such as `/dev/ttyS*`, analogous to COM ports on Windows).
# Serial connections serve as an emergency access method when standard SSH connectivity is unavailable.
# This configuration only affects out-of-band management sessions.
# It has no impact on regular SSH connections to the server.
# https://chatgpt.com/c/67e1e02c-eee0-8003-95f3-b0e5e26a976b
# https://claude.ai/chat/756cd957-c5b0-413f-b4e8-06647056d204
# BEGIN LW_STTY:
tty_dev=$(tty | awk '/\/dev\/ttyS/ {print $1}')
if [[ ${tty_dev} == *tty* ]] ; then
  stty -F ${tty_dev} icrnl
  set +o history
  trap $(sync) EXIT
fi
# END LW_STTY:

# 2025-03-23 Dmitrii Fediuk https://www.upwork.com/fl/mage2pro
# 1) This code is for Node Version Manager: https://chatgpt.com/c/67e0492f-6c48-8003-89e9-f064ed4c3d7c
# 2) It was added by someone on 2025-01-25.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
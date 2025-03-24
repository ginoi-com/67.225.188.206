# 2025-03-25 Dmitrii Fediuk https://upwork.com/fl/mage2pro
export PS1='\[\e[01;33m\]\w\n\[\e[38;5;028m\]\$ \[\e[00m\]'
eval "`dircolors`"
alias ...='cd ../..'
alias ..='cd ..'
alias l='ls $LS_OPTIONS -lA'
alias ll='ls $LS_OPTIONS -l'
alias ls='ls $LS_OPTIONS'
# 2017-06-09 For mage2pro/core
export DF_DEVELOPER=1
export EDITOR="vim"
export HISTCONTROL="ignoreboth"
export HISTFILESIZE=99999999
export HISTSIZE=99999999
export LS_OPTIONS='--color=auto -h'
export TERM=xterm-256color
# 2023-10-19 Dmitrii Fediuk https://upwork.com/fl/mage2pro
# 1) «cannot create user data directory: failed to verify SELinux context of /root/snap:
# exec: "matchpathcon": executable file not found in $PATH»: https://github.com/dmitrii-fediuk/5.9.188.84/issues/54
# 2) "How did I solve «cannot create user data directory: failed to verify SELinux context of /root/snap:
# exec: "matchpathcon": executable file not found in $PATH» for Certbot / Let's Encrypt?": https://df.tips/t/2033
# 3) https://forum.snapcraft.io/t/21487/3
export PATH="$PATH:/usr/sbin"

# 2025-03-23 Dmitrii Fediuk https://www.upwork.com/fl/mage2pro
# 1) This code is for Node Version Manager: https://chatgpt.com/c/67e0492f-6c48-8003-89e9-f064ed4c3d7c
# 2) It was added by someone on 2025-02-07.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
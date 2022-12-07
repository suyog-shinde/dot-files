#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Command Prompt
# PS1='[\u@\h \W]\$ '
GREEN="\[$(tput setaf 2)\]"
CYAN="\[$(tput setaf 6)\]"
RESET="\[$(tput sgr0)\]"

PS1="${GREEN}\u@\h ${CYAN}\W${RESET}>> "

# CommandLine
alias ls='exa --long --header'
alias ll='exa --long --all --header'
alias nv='nvim'
alias update='yay -Syu --devel --timeupdate'
alias clean='yay --yay --clean; yay -Scc'
alias sd='shutdown --poweroff'
alias rb='shutdown --reboot'
alias cp='cp --recursive --remove-destination --update'
alias rm='rm --recursive --force'

# Media
alias stats='mpv ~/Tutorials/Math/Statistics\ 110/'
alias fu='mpv /mnt/HDD/DC++/TV\ Series/Futurama/'
alias bbt='mpv /mnt/HDD/DC++/TV\ Series/The\ Big\ Bang\ Theory/'

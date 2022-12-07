#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='[\u@\h \W]\$ '
GREEN="\[$(tput setaf 2)\]"
CYAN="\[$(tput setaf 6)\]"
RESET="\[$(tput sgr0)\]"

PS1="${GREEN}\u@\h ${CYAN}\W${RESET}>> "

alias ls='exa --color=always'
alias ll='exa -lah'
alias nv='nvim'
alias stats='mpv ~/Tutorials/Math/Statistics\ 110/'

alias fu='mpv /mnt/HDD/DC++/TV\ Series/Futurama/'
alias bbt='mpv /mnt/HDD/DC++/TV\ Series/The\ Big\ Bang\ Theory/'



# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="candy" # set by `omz`

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Prompt commands
alias ls='exa --long --header'
alias ll='exa --long --all --header'
alias nv='nvim'
alias sd='shutdown --poweroff now'
alias rb='shutdown --reboot'
alias cp='cp --recursive --remove-destination'
alias rm='rm --recursive --force'
alias mv='mv --interactive'

# VPN
alias vpnon='sudo systemctl start windscribe; windscribe connect NL'
alias vpnoff='windscribe disconnect; sudo systemctl stop windscribe'

# Package Manager
alias update='yay -Syu --devel --timeupdate'
alias clean='yay --yay --clean; yay -Scc'
alias mirrors-update='sudo rm -rf /etc/pacman.d/mirrorlist; sudo reflector -c India --age 6 --sort rate --save /etc/pacman.d/mirrorlist'

# Media
alias stats='mpv ~/Tutorials/Math/Statistics\ 110/'
alias focus='mpv /mnt/Windows/Users/ss/Music/Deep.Meditation.Music.m4a --loop=inf'
alias port='mpv /mnt/Windows/Users/ss/Music/portable/ --shuffle'
alias fu='mpv /mnt/HDD/DC++/TV\ Series/Futurama/'
alias bbt='mpv /mnt/HDD/DC++/TV\ Series/The\ Big\ Bang\ Theory/'
alias rickmorty='mpv /mnt/HDD/DC++/TV\ Series/Rick\ and\ Morty'
alias tomjerry='mpv /mnt/HDD/DC++/TV\ Series/Tom\ and\ Jerry\ Classic/ --shuffle'
alias friends='mpv /mnt/HDD/DC++/TV\ Series/F.R.I.E.N.D.S\ \ 720p\ HEVC\ Complete/ --shuffle'
alias mrrobot='mpv /mnt/HDD/DC++/TV\ Series/MrRobot/'




# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/ss/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

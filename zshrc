# Create variables for necessary paths
CONFIG_BASE=$HOME/sysConfig

# 
TERM="xterm-256color"

# Load Antigen
source $CONFIG_BASE/antigen/antigen.zsh

# Load oh-my-zsh's library
antigen use oh-my-zsh

# Bundles from defualt repo (robbyrussell's oh-my-zsh
antigen bundle git

# Bundles from zsh-users
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

# Load theme
antigen theme bhilburn/powerlevel9k powerlevel9k

# Configure Powerlevel9k theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status root_indicator dir_writable context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs battery time)

# Finish and apply Antigen
antigen apply

# Useful aliases for list files and directories
alias ll="ls -lF"
alias la="ls -A"
alias lla="ls -alF"
alias l="ls -CF"

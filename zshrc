# create variables for necessary paths
CONFIG_BASE=$HOME/sysConfig

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
antigen theme robbyrussell

# Finish and apply Antigen
antigen apply

# Useful aliases for list files and directories
alias ll="ls -lF"
alias la="ls -A"
alias lla="ls -alF"
alias l="ls -CF"

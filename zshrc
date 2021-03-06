#
# Variables
#

# Create variables for necessary paths
CONFIG_BASE=$HOME/sysConfig

# Set the default user
DEFAULT_USER="marco"

# Set Vim the standard editor
EDITOR=vim

#
# Configure Powerlevel9k Theme
#

# Set some color variables
DEFAULT_FOREGROUND=006
DEFAULT_BACKGROUND=237
DEFAULT_COLOR=$DEFAULT_FOREGROUND

# Use nerd font for Powerlevel9k
POWERLEVEL9K_MODE='nerdfont-complete'

# Set prompt content and define basic style
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status root_indicator context dir_writable dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time background_jobs battery time ssh)

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="╰\uF460\uF460\uF460"

# Specify separators
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="\uE0B4"
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR="%F{$(( $DEFAULT_BACKGROUND - 2 ))}|%f"
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR="\uE0B6"
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR="%F{$(( $DEFAULT_BACKGROUND - 2 ))}|%f"

# Status section
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_OK_BACKGROUND="$(( $DEFAULT_BACKGROUND + 2 ))"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="$(( $DEFAULT_BACKGROUND + 2 ))"

# Root indicator section
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="magenta"
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="$(( $DEFAULT_BACKGROUND - 2 ))"
POWERLEVEL9K_ROOT_ICON=$'\uF198' 

# Context indicator section
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
POWERLEVEL9K_CONTEXT_TEMPLATE="\uF109 %m"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="$DEFAULT_BACKGROUND"

# Directory section
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_DIR_HOME_BACKGROUND="$POWERLEVEL9K_DIR_DEFAULT_BACKGROUND"
POWERLEVEL9K_DIR_HOME_FOREGROUND="$POWERLEVEL9K_DIR_DEFAULT_FOREGROUND"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="$POWERLEVEL9K_DIR_DEFAULT_BACKGROUND"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="$POWERLEVEL9K_DIR_DEFAULT_FOREGROUND"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="$POWERLEVEL9K_DIR_DEFAULT_BACKGROUND"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="$POWERLEVEL9K_DIR_DEFAULT_FOREGROUND"

# Execution time section
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_EXECUTION_TIME_ICON="\u23F1"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0

# Backgrund job section
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND="$DEFAULT_FOREGROUND"

# Battery power section
POWERLEVEL9K_BATTERY_LEVEL_BACKGROUND_COLOR="$(( $DEFAULT_BACKGROUND - 2 ))"
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND="$POWERLEVEL9K_BATTERY_LEVEL_BACKGROUND_COLOR"
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND="$POWERLEVEL9K_BATTERY_LEVEL_BACKGROUND_COLOR"
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND="$POWERLEVEL9K_BATTERY_LEVEL_BACKGROUND_COLOR"
POWERLEVEL9K_BATTERY_STAGES=(
   $'▏    ▏' $'▎    ▏' $'▍    ▏' $'▌    ▏' $'▋    ▏' $'▊    ▏' $'▉    ▏' $'█    ▏'
   $'█▏   ▏' $'█▎   ▏' $'█▍   ▏' $'█▌   ▏' $'█▋   ▏' $'█▊   ▏' $'█▉   ▏' $'██   ▏'
   $'██   ▏' $'██▎  ▏' $'██▍  ▏' $'██▌  ▏' $'██▋  ▏' $'██▊  ▏' $'██▉  ▏' $'███  ▏'
   $'███  ▏' $'███▎ ▏' $'███▍ ▏' $'███▌ ▏' $'███▋ ▏' $'███▊ ▏' $'███▉ ▏' $'████ ▏'
   $'████ ▏' $'████▎▏' $'████▍▏' $'████▌▏' $'████▋▏' $'████▊▏' $'████▉▏' $'█████▏' )

# Time section
POWERLEVEL9K_TIME_FORMAT="\uF017 %T" #  15:29
POWERLEVEL9K_TIME_FOREGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_TIME_BACKGROUND="$DEFAULT_BACKGROUND"

# 
# Antigen and Plugins
#

# Load Antigen
source $CONFIG_BASE/antigen/antigen.zsh

# Load oh-my-zsh's library
antigen use oh-my-zsh

# Check for 256color support
antigen bundle chrissicool/zsh-256color

# Plugin(s) for Git, for example aliases
antigen bundle git

# Syntax highlighting
antigen bundle zdharma/fast-syntax-highlighting

# Enable searching the history
antigen bundle zsh-users/zsh-history-substring-search

# Get tips for defined alias
antigen bundle djui/alias-tips

# Toggle sudo before previous/current command
antigen bundle sudo

# Useful copy command 'cpv'
antigen bundle cp

# Funny plugins
antigen bundle chucknorris

# Load Powerlevel9k theme
antigen theme bhilburn/powerlevel9k powerlevel9k

# Solarized-dark coloring for man pages
antigen bundle zlsun/solarized-man

# Finish and apply Antigen
antigen apply

# 
# Configure Zsh
#

# Command-not-found hook to propose packages when entering unknown command
source /etc/zsh_command_not_found

# Automatically rehash
zstyle ':completion:*' rehash true

# Enable cd to use variables
setopt cdablevars

# Enable command and argument correction
setopt correctall

# Glob also matches dotfiles with explicitly writing .
setopt globdots

# Prevent accidentally overwriting existing files
setopt noclobber

#
# Aliases
#

# Useful aliases for list files and directories
alias ll="ls -lF"
alias la="ls -A"
alias l="ls -CF"

################################################################################
# File: .dotfiles/zsh/zshrc
# Author: Bryce Kwon
# Date: 2024-03-22
# Version: 2.0.0
################################################################################


################################################################################
#                               General Settings                               #
################################################################################

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# [Ctrl-RightArrow] - move forward one word
bindkey -M emacs '^[[1;5C' forward-word
bindkey -M viins '^[[1;5C' forward-word
bindkey -M vicmd '^[[1;5C' forward-word

# [Ctrl-LeftArrow] - move backward one word
bindkey -M emacs '^[[1;5D' backward-word
bindkey -M viins '^[[1;5D' backward-word
bindkey -M vicmd '^[[1;5D' backward-word

# setting up history options
HISTSIZE=1000
SAVEHIST=1000
HISTFILE="$XDG_CACHE_HOME/zsh/history"


################################################################################
#                    Import Themes, Plugins, and Libraries                     #
################################################################################

ZSH_HOME="$XDG_CONFIG_HOME/zsh"

source "$ZSH_HOME/themes/agnoster.theme.zsh" 2>/dev/null

source "$ZSH_HOME/libs/appearance.zsh" 2>/dev/null
source "$ZSH_HOME/libs/completions.zsh" 2>/dev/null
source "$ZSH_HOME/libs/functions.zsh" 2>/dev/null
source "$ZSH_HOME/libs/aliases.zsh" 2>/dev/null

source "$ZSH_HOME/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh" 2>/dev/null
source "$ZSH_HOME/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh" 2>/dev/null
source "$ZSH_HOME/plugins/zsh-colored-man-pages/colored-man-pages.plugin.zsh" 2>/dev/null

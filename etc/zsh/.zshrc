#
# $ZDOTDIR/.zshrc
#

# Set history
HISTFILE="$XDG_CACHE_HOME/zsh/histfile"
HISTSIZE=1000
SAVEHIST=1000

# Shortcuts and aliases
[ -f "$XDG_CONFIG_HOME/home.d/aliases" ] && source "$XDG_CONFIG_HOME/home.d/aliases"

# Extended glob
setopt autocd extendedglob

# Prompt extension
setopt PROMPT_SUBST

# Disable beep
unsetopt beep

# Following lines are for autocompletion
zstyle :compinstall filename "$XDG_CONFIG_HOME/zsh/.zshrc"

autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# Set vim keys for autocomplition
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Force emacs mode
bindkey -e

autoload -U colors && colors
# Set prompt
# PS1='%{$fg[magenta]%}$(smartpath 2> /dev/null) $ '
PS1='-> '

# Syntax highlighting
source "$XDG_DATA_HOME/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" 2> /dev/null
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=green
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=blue,underline
ZSH_HIGHLIGHT_STYLES[precommand]=fg=blue,underline
ZSH_HIGHLIGHT_STYLES[arg0]=fg=blue

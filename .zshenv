#!/usr/bin/zsh
#
# This file is set as the .zprofile link
#

source $HOME/etc/home.d/dirs

export XDG_CACHE_HOME="$VAR/cache"
export XDG_CONFIG_HOME="$ETC"
export XDG_DATA_HOME="$USR/local/share"

export PATH="$BIN/x:$PATH"
export PATH="$BIN/wm:$PATH"
export PATH="$BIN/wrap:$PATH"
export PATH="$BIN:$PATH"
export PATH="$PATH:$OPT/cargo/bin"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export WALL="$XDG_CACHE_HOME/wall"
export WALL_BLURRED="$XDG_CACHE_HOME/wall_b.png"

export EDITOR="kak"
export VISUAL="kak"
export BROWSER="firefox"
export FILE="ranger"
export TERMINAL="st"
export READER="zathura"
export WM="bspwm"

export NODE_REPL_HISTORY=""

export QT_QPA_PLATFORMTHEME=gtk2

export BATTERY_CRITICAL="20"
export LOWBATTERYD_INTERVAL="120"

########################
# Paths for decluttering
########################

export PULSE_COOKIE="$XDG_CACHE_HOME/pulse/cookie"
export LESSHISTFILE="-"
export GOPATH="$OPT/go"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/pythonrc"
export XAUTHORITY="$XDG_CACHE_HOME/Xauthority"
export CARGO_HOME="$OPT/cargo"
export RUSTUP_HOME="$OPT/rustup"

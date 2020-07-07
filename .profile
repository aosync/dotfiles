#!/bin/sh
#
# profile file
#

. "$HOME/etc/home.d/dirs"

export XDG_CACHE_HOME="$VAR/cache"
export XDG_CONFIG_HOME="$ETC"
export XDG_DATA_HOME="$USR/local/share"
export ENV="$XDG_CONFIG_HOME/sh/shrc"

export PATH="/usr/lib/ccache/bin:$PATH"
export PATH="$BIN/x:$PATH"
export PATH="$BIN/wm:$PATH"
export PATH="$BIN/wrap:$PATH"
export PATH="$BIN:$PATH"

export PATH="$PATH:$OPT/cargo/bin"
export PATH="$PATH:$OPT/deno/bin"

export WALL="$XDG_CACHE_HOME/wall"
export WALL_BLURRED="$XDG_CACHE_HOME/wall_b.png"
export SCREENSHOTS="$MED/screenshots"

export EDITOR=nvim
export VISUAL=nvim
export BROWSER=firefox
export FILE=ranger
export TERMINAL=st
export READER=zathura
export WM=bspwm
export WMDIR=/dev/shm/wfs

export CC="clang"
export CXX="clang++"

export CCACHE_DIR="$VAR/cache/ccache"

export TORRENTS_CSV="$OPT/torrents.csv/torrents.csv"

export NODE_REPL_HISTORY=''

export QT_QPA_PLATFORMTHEME=gtk2

export BATTERY_CRITICAL=20
export LOWBATTERYD_INTERVAL=120

########################
# Paths for decluttering
########################

export PULSE_COOKIE="$XDG_CACHE_HOME/pulse/cookie"
export LESSHISTFILE=-
export GOPATH="$OPT/go"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/pythonrc"
export XAUTHORITY="$XDG_CACHE_HOME/Xauthority"
export CARGO_HOME="$OPT/cargo"
export RUSTUP_HOME="$OPT/rustup"
export DENO_INSTALL="$OPT/deno"
export NPM_CONFIG_USERCONFIG="$ETC/npmrc"
export NPM_CONFIG_GLOBALCONFIG=/etc/npmrc

[ -z "$DISPLAY" ] && [ "$(tty)" = /dev/tty1 ] && exec startx

export PATH="/home/aws/opt/cargo/bin:$PATH"

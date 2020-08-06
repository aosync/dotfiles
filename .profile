#!/bin/sh
#
# profile file
#

. "$HOME/etc/home.d/dirs"

export XDG_CACHE_HOME="$VAR/cache"
export XDG_CONFIG_HOME="$ETC"
export XDG_DATA_HOME="$VAR/local/share"
export ENV="$XDG_CONFIG_HOME/sh/shrc"

export LANG=en_US.UTF-8

export PATH="/usr/lib/ccache/bin:$PATH"
export PATH="$BIN/x:$PATH"
export PATH="$BIN/wm:$PATH"
export PATH="$BIN/wrap:$PATH"
export PATH="$BIN:$PATH"

export PATH="$PATH:$OPT/cargo/bin"
export PATH="$PATH:$OPT/deno/bin"

export EDITOR=nvim
export VISUAL=nvim

export CFLAGS="-O3 -pipe -march=native"
export CXXFLAGS="$CFLAGS"
export MAKEFLAGS="-j4"

export CC="gcc"
export CXX="g++"

export CCACHE_DIR="$VAR/cache/ccache"

export TORRENTS_CSV="$OPT/torrents.csv/torrents.csv"

export NODE_REPL_HISTORY=''

export QT_QPA_PLATFORMTHEME=gtk2

export DOTS_REPO="$USR/dots"

########################
# Paths for decluttering
########################

export LESSHISTFILE=-
export GOPATH="$OPT/go"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/pythonrc"
export XAUTHORITY="$XDG_CACHE_HOME/Xauthority"
export CARGO_HOME="$OPT/cargo"
export RUSTUP_HOME="$OPT/rustup"
export DENO_INSTALL="$OPT/deno"
export NPM_CONFIG_USERCONFIG="$ETC/npmrc"
export NPM_CONFIG_GLOBALCONFIG=/etc/npmrc

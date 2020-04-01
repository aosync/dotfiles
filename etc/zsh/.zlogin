#!/usr/bin/zsh

[ "$(tty)" = "/dev/tty1" ] && exec startx "$XDG_CONFIG_HOME/xorg.d/xinitrc"

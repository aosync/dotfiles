#!/usr/bin/es

alias a alias

a doas (doas --)
a sudo doas

a ls (ls --color\=auto -a --group-directories-first)
a ll (ls -l)
a rr (rm -R)
a c clear
a wd smartpath

a p echo

a gall (git add -A)
a gcm (git commit -m)
a gs (git status)
a dotfiles (git --git-dir\=$VAR/dots --work-tree\=$HOME)

a r ranger

a k kak
a sk (doas kak)
a dk sk

fn-weather = @ loc { [ -z $loc ] && loc = '?m' ; curl 'https://wttr.in/'$loc }

a nctl (doas netctl)

a neofetch (neofetch --disable gpu theme icons resolution kernel --colors 3 2 15 3 15 15 --ascii ~/med/ascii_art/att --ascii_colors 6 7 15)
a fetch neofetch

. $XDG_CONFIG_HOME/home.d/landmarks.es

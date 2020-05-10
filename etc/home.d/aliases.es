#!/usr/bin/env es

alias a alias

a ls (ls '--color=auto' -a --group-directories-first)
a ll (ls -l)
a c clear
a p smartpath

a gall (git add -A)
a gcm (git commit -m)
a gs (git status)
a dotfiles (git '--git-dir='^$VAR/dots/ '--work-tree='^$HOME)

a r ranger

a k kak
a sk (sudo kak)

a weather (curl 'https://wttr.in/?m')

a nctl (sudo netctl)

. $XDG_CONFIG_HOME/home.d/landmarks.es

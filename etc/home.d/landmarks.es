#!/usr/bin/env es

{
	t = <={%read}
	while {! ~ $#t 0} {
		line = <={%fsplit ' ' $t}
		dest = $line(2 ...)
		a g^$line(1) (cd $^dest)
		t = <={%read}
	}
} << eof-marker
H $HOME
B $HOME/bin
E $HOME/etc
S $HOME/usr/src
s $HOME/usr/local/share
O $HOME/opt
W $HOME/med/wall
D $HOME/med/doc
d $HOME/usr/doc
M $HOME/med
w $HOME/bin/wrap
m /mnt
eof-marker

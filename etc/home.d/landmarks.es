#!/usr/bin/es

{
	let (t = <={%read})
	while {! ~ $#t 0} {
		let (line = <={%fsplit ' ' $t}) {
			let(dest = $line(2 ...))
			a g$line(1) (cd $^dest)
			t = <={%read}
		}
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
x $HOME/bin/x
X $HOME/etc/xorg.d
h $HOME/etc/home.d
m /mnt
eof-marker

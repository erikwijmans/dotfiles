#!/bin/sh
xdpyinfo -ext XINERAMA | sed '/^  head #/!d;s///' |
while IFS=' :x@,' read i w h x y; do
    import -window root -crop ${w}x$h+$x+$y $1/head_$i.png
done
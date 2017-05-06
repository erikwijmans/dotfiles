#!/bin/bash

TEMPDIR=/tmp
LOCKIMG=$HOME/.config/i3/lock_image.png

sh $HOME/.config/i3/individual_scrot.sh $TEMPDIR
convert $TEMPDIR/head_0.png -scale 10% -scale 1000% $TEMPDIR/head_0.png
[[ -f $LOCKIMG ]] && convert $TEMPDIR/head_0.png $LOCKIMG -gravity center -composite -matte $TEMPDIR/head_0.png
if [ -e $TEMPDIR/head_1.png ]; then
  convert $TEMPDIR/head_1.png -scale 10% -scale 1000% $TEMPDIR/head_1.png
  [[ -f $LOCKIMG ]] && convert $TEMPDIR/head_1.png $LOCKIMG -gravity center -composite -matte $TEMPDIR/head_1.png
  convert  $TEMPDIR/head_1.png $TEMPDIR/head_0.png +append $TEMPDIR/screen.png
else
  mv $TEMPDIR/head_0.png $TEMPDIR/screen.png
fi
# dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
i3lock -d -i $TEMPDIR/screen.png -I 60

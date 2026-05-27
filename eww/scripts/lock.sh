#!/bin/bash
TMPBG=/tmp/lockscreen.png
scrot "$TMPBG"
convert "$TMPBG" -blur 0x10 "$TMPBG"
i3lock -i "$TMPBG" --nofork --ignore-empty-password
rm "$TMPBG"

ffmpeg -f image2 -i mire%04d.png -i ticksLR.m4a -vf drawtext="/Users/cedric/Downloads/VLMC/vlc/share/skins2/fonts/FreeSans.ttf:text='brought to you by Cedric Hamelin':fontsize=40:fontcolor=white:x=50:y=50" -r 25 -vcodec h264 -b 15000k -ab 256k -c:a aac -strict -2 -shortest mire-text.mp4
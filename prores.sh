#!/bin/bash

mp4box='/Applications/Osmo4.app/Contents/MacOS/MP4Box'
ffmpeg='/opt/local/bin/ffmpeg'


#ffmpeg -f image2 -i png_files/mire%04d.png -i ticksLR.m4a -shortest -vf crop=1920:1080:0:60 -r 25 -c:v libx264 -preset veryslow -qp 0 -c:a aac -ab 256k -strict -2 -filter_complex " [1:0] apad " mire1080p.mp4
#$ffmpeg -f image2 -i png_files/mire%04d.png -vf crop=1920:1080:0:60 -r 25 -c:v libx264 -preset veryslow -qp 0 mire1080p_v.mp4

duration=$(ffprobe -i mire1080p_v.mp4 -show_format -v quiet | sed -n 's/duration=//p')

$mp4box mire1080p_v.mp4 -add ticksLR.m4a -splitx 0:$duration -out mire1080p_av.mp4

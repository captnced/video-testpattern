#!/bin/bash

in=$1
out=${in%.*}-tc.mp4

echo "BURNING TIMECODES INTO $out"

tc_rate=$(ffprobe -i $in -show_streams 2>&1|grep fps|sed "s/.*, \([0-9]*\) fps,.*/\1/")


ffmpeg -threads 0 -i $in -acodec copy -vcodec libx264 -preset slow -crf 18 -deinterlace -vf "drawtext=fontsize=15:fontfile=/Library/Fonts/Andale Mono.ttf:timecode='00\:00\:00\:00':rate=$tc_rate:text='':fontsize=72:fontcolor='white':boxcolor=0x000000AA:box=1:x=860-text_w/2:y=960" $out

ffmpeg -f image2 -i png_files/mire%04d.png -i ticksLR.m4a -r 25 -vcodec h264 -b 15000k -ab 256k -c:a aac -strict -2 -shortest mire.mp4

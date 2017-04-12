rm mire1080p.mp4
ffmpeg -f image2 -i png_files/mire%04d.png -i ticksLR.m4a -shortest -vf crop=1920:1080:0:60 -r 25 -c:v libx264 -preset veryslow -qp 0 -c:a aac -ab 256k -strict -2 -filter_complex " [1:0] apad " mire1080p.mp4

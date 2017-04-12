#!/bin/bash
IN=$1
IT=10
OUT=${IN%.*}-huge.mp4
mp4box=/Applications/Osmo4.app/Contents/MacOS/MP4Box
i=0
$mp4box -cat $IN -cat $IN $OUT
while [ $i -lt $IT ]
do
	i=$(($i+1))
	$mp4box -cat $OUT -cat $IN $OUT
done

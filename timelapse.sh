#!/bin/bash
for i in $(seq 1 $2)
do
	import -window root ./$i.png
	echo Image $i
	sleep $1
done
echo Timelapse complete! Rendering final clip
ffmpeg -framerate $3 -i %d.png $4.mp4

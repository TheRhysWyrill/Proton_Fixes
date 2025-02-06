#!/usr/bin/env bash

for FMV in *.mpg; do ffmpeg -i $FMV ${FMV:0:-4}.mp4; rm $FMV; mv -- ${FMV:0:-4}.mp4 $FMV; done
#!/usr/bin/env bash

for FMV in *.m*; do ffmpeg -i $FMV -vf vflip ${FMV:0:-4}.mp4; rm $FMV; mv -- ${FMV:0:-4}.mp4 $FMV; done
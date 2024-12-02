#!/usr/bin/env bash

for wmv_file in *.wmv
do
new_filename="$wmv_file".ORIGINAL
echo "Renaming $wmv_file to $new_filename"
mv "$wmv_file" "$new_filename"

ffmpeg -i "$new_filename" -acodec pcm_s16le -vcodec copy -map 0:v -map 0:a:5 "$wmv_file"
done

#!/bin/sh

## clean flv streams script by A1RM4X
## Vesion 1.0

## REMUX ALL FLV STREAM TO MP4

DIR="/mnt/TO/UPDATE/QWERQWERQWER"
cd "$DIR"
for i in *.flv; do
    ffmpeg -i "$i" -n -map 0 -codec copy "${i%.*}.mp4"
done

## DELETE ALL fLV FILE OLDER THAN 1 DAY
## Make sure the path is right before using this command

## find /mnt/TO/UPDATE/QWERQWERQWER -name '*.flv' -mtime +1 -type f -delete

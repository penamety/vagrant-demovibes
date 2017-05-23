# Grabs all files in music/, tries to get artist and song name from filename, and imports. Expects Artist-Songname.mp3
# pyImportMp3.py will strip whitespace from artist and title, so Artist - Songname.mp3 should work too.
# Underscore gets translated to space both in artist and title.

for x in /home/vagrant/media/music/*
do fil=$(basename "$x")
artist=$(echo $fil | cut -d '-' -f1 | sed 's/_/ /g')
title=$(echo $fil | cut -d '-' -f2 | sed 's/....$//' | sed 's/_/ /g')
#echo Artist is $artist; echo Title is $title; echo 
./pyImportMp3.py -f "$x" -a "$artist" -t "$title" -C
done

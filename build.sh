#!/bin/bash

echo ":org 0x1000" > 3dvipermaze.8o
echo >> 3dvipermaze.8o

cat src/shared-macros.8o >> 3dvipermaze.8o

# Put data at 3.5K border and further, but define it first so we can reference
# all the labels later

cat data/game-state.8o >> 3dvipermaze.8o
cat data/top-down-tiles.8o >> 3dvipermaze.8o

cat data/strings.8o >> 3dvipermaze.8o
cat data/font.8o >> 3dvipermaze.8o

cat screens/screens.txt >> 3dvipermaze.8o
cat data/binary-tree.8o >> 3dvipermaze.8o

cat data/songs.8o >> 3dvipermaze.8o

# Put program code below 3.5K border

echo >> 3dvipermaze.8o
echo ":org 0x200" >> 3dvipermaze.8o
echo >> 3dvipermaze.8o

cat src/main.8o >> 3dvipermaze.8o
cat src/transitions.8o >> 3dvipermaze.8o

cat src/map-management.8o >> 3dvipermaze.8o
cat src/render-3d.8o >> 3dvipermaze.8o
cat src/mini-map.8o >> 3dvipermaze.8o

cat src/print-text.8o >> 3dvipermaze.8o
cat src/music-player.8o >> 3dvipermaze.8o

cat src/key-input.8o >> 3dvipermaze.8o

# Maps data is an exception, because we need cyclic references there. The map
# triggers reference maps and the maps reference triggers. So one of them needs
# to use the regular :unpack, which means they both reside in executable space.

cat src/map-triggers.8o >> 3dvipermaze.8o
cat data/maps.8o >> 3dvipermaze.8o

echo "# That's all folks!" >> 3dvipermaze.8o

# Put on the clipboard for convenient pasting into Octo
cat 3dvipermaze.8o | pbcopy

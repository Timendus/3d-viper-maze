#!/bin/bash

cat src/main.8o > game.8o
cat src/render-3d.8o >> game.8o
cat src/map-management.8o >> game.8o
cat src/mini-map.8o >> game.8o
cat src/key-input.8o >> game.8o
cat src/music-player.8o >> game.8o
cat src/songs.8o >> game.8o
cat src/maps.8o >> game.8o
cat src/game-state.8o >> game.8o
cat src/top-down-tiles.8o >> game.8o
cat screens/screens.txt >> game.8o
cat src/binary-tree.8o >> game.8o
echo "# That's all folks!" >> game.8o

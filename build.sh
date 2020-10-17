#!/bin/bash

cat src/main.8o > game.8o

cat src/map-management.8o >> game.8o
cat src/render-3d.8o >> game.8o
cat src/mini-map.8o >> game.8o

cat src/key-input.8o >> game.8o

cat src/music-player.8o >> game.8o
cat data/songs.8o >> game.8o # Can't put this above 3.5K yet :/

cat src/map-triggers.8o >> game.8o
cat data/maps.8o >> game.8o  # Can't put this above 3.5K yet :/

# --- 3.5K border

cat data/game-state.8o >> game.8o
cat data/top-down-tiles.8o >> game.8o

cat screens/screens.txt >> game.8o
cat data/binary-tree.8o >> game.8o

echo "# That's all folks!" >> game.8o

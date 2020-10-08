#!/bin/bash
#
# This script combines all the txt files in this directory into one big pile of
# bytes for the game.

cat hall-zero.txt > screens.txt
sed -n -e 1,8p -e 25,33p hall-one.txt >> screens.txt
sed -n -e 1,8p -e 25,33p hall-two.txt >> screens.txt

cat wall-zero.txt >> screens.txt
sed -n -e 1,8p -e 25,33p wall-zero-zero.txt >> screens.txt
sed -n -e 1,8p -e 25,33p wall-zero-one.txt >> screens.txt

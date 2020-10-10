#!/bin/bash
#
# This script combines all the txt files in this directory into one big pile of
# bytes for the game.

# Full base image
cat hall-0.txt > screens.txt

# Outer variations
sed -n -e 1,8p -e 25,33p hall-1.txt >> screens.txt
sed -n -e 1,8p -e 25,33p hall-2.txt >> screens.txt

# Inner variations
sed -n 9,25p hall-3.txt >> screens.txt
sed -n 9,25p hall-3-5.txt >> screens.txt
sed -n 9,25p hall-3-6.txt >> screens.txt
sed -n 9,25p hall-4.txt >> screens.txt
sed -n 9,25p hall-4-6.txt >> screens.txt
sed -n 9,25p hall-5.txt >> screens.txt
sed -n 9,25p hall-6.txt >> screens.txt

# Full base image
cat wall-1.txt >> screens.txt

# Outer variations
sed -n -e 1,8p -e 25,33p wall-1-1.txt >> screens.txt
sed -n -e 1,8p -e 25,33p wall-1-2.txt >> screens.txt

# Inner variations
sed -n 9,25p wall-2.txt >> screens.txt
sed -n 9,25p wall-3.txt >> screens.txt
sed -n 9,25p wall-3-3.txt >> screens.txt
sed -n 9,25p wall-4.txt >> screens.txt
sed -n 9,25p wall-4-3.txt >> screens.txt
sed -n 9,25p wall-4-4.txt >> screens.txt
sed -n 9,25p wall-5.txt >> screens.txt
sed -n 9,25p wall-5-3.txt >> screens.txt
sed -n 9,25p wall-5-5-3.txt >> screens.txt
sed -n 9,25p wall-5-5.txt >> screens.txt

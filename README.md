# 3D Viper Maze

A fun project for [Octojam 7](https://itch.io/jam/octojam-7). Challenge: write a
game for the illustrious Chip-8 platform in the month of October.

## The concept

3D Viper Maze is (obviously) an homage to the game [3D Monster Maze](https://en.wikipedia.org/wiki/3D_Monster_Maze)
from 1981. That game was released just three years after the specification for
CHIP-8 was published, so it's from around the same era. In honour of the first
computer that ran CHIP-8, the Cosmac VIP, and its related magazine, the VIPer,
I figured it was time for a viper version of 3D Monster Maze. With a few twists
of my own.

3D Viper Maze is not a game with an endless supply of randomly generated mazes,
like its namesake. Instead, it has handcrafted levels with vipers and buttons.
Your challenge, if you accept it: to find the exit in each maze, in a series
of ever more difficult puzzles.

## Development notes

Of course I initially wanted to use [my own toolchain for Chip-8](https://github.com/Timendus/chip-8),
but unfortunately I need to borrow a few instructions from both SuperChip and
XO-Chip for this game. And my toolchain does not support those yet. Adding those
extensions now would take away precious spare time from working on the actual
game 😉 So I decided to work with [Octo](https://johnearnest.github.io/Octo/).

## Rough TO DO list:

* [x] Have in-memory models of a map and the player's position
* [x] Render model of map as a top-down "minimap" (for debugging and fun)
* [x] Handle keypresses and update player model accordingly
* [x] Write a convert tool to go from images to binary data that Octo understands
* [x] Artwork
  * [x] Draw a gazillion images of "3D" walls
  * [x] Make the gazillion images prettier
* [x] 'Sprite' the right images to the screen depending on position and map
  * [x] Column one
  * [x] Column two
  * [x] Column three
  * [x] Column four
  * [x] Bugfix S-bends in the hallway
* [x] Allow switching between 3D view and minimap view
* [x] Add vipers that kill you and send you back to start (three lives?)
* [ ] Add fancy viper animation
* [ ] Make vipers walk around..?
* [x] Add buttons that change walls
* [ ] Add eery texts
* [x] Add music
* [ ] Compose more songs for other levels
* [ ] Make more levels
* [ ] Add title screen
* [ ] Add an overly convoluted introduction text
* [ ] Add "You made it!" screens for at the end of a level and at the end of the game

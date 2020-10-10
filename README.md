# Untitled Chip-8 Game

A fun project for [Octojam 7](https://itch.io/jam/octojam-7). Challenge: write a
game for the illustrious Chip-8 platform in the month of October.

Of course I initially wanted to use [my own toolchain for Chip-8](https://github.com/Timendus/chip-8),
but unfortunately I need to borrow a few instructions from both SuperChip and
XO-Chip for the idea that I have in mind. And my toolchain does not support
those yet. Adding those extensions now would take away precious spare time from
working on the actual game 😉 So I decided (for now at least) to work with
[Octo](https://johnearnest.github.io/Octo/).

The idea I have in mind is to build an homage to the game [3D Monster Maze](https://en.wikipedia.org/wiki/3D_Monster_Maze)
from 1981. I haven't seen any programs for Chip-8 do anything with 3D or pseudo
3D yet, so I hope this will be an original.

### Rough TO DO list:

* [x] Have in-memory models of a map and the player's position
* [x] Render model of map as a top-down "minimap" (for debugging and fun)
* [x] Handle keypresses and update player model accordingly
* [x] Write a convert tool to go from images to binary data that Octo understands
* [ ] Artwork
  * [x] Draw a gazillion images of "3D" walls
  * [ ] Make the gazillion images prettier
* [ ] 'Sprite' the right images to the screen depending on position and map
  * [x] Column one
  * [ ] Column two
  * [ ] Column three
  * [x] Column four
* [x] Allow switching between 3D view and minimap view
* [ ] Randomly generate mazes?
* [ ] Add a big bad enemy?
* [ ] Add an overly convoluted introduction text?

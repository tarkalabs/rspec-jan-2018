## Snake & Ladder

Write a simple script to be the game engine of a snake & ladder game. The script can be initialized with number of grids, list of grids where snake mouth is and list of grids where ladder foot is and steps to decrease or increase when met with snake or ladder respectively.

It should then have an API to pass in the user's dice result. Return 'GAME WON' when user reaches the last grid.

Example:

```
game = Game.new(72, {snakes: [16, 57, 23, 42], ladders: [10, 35, 19, 25]}, 5)
=> INITIALIZED

game.dice(4)
=> CURRENT_POSITION: 4

game.dice(6)
=> LADDER
=> CURRENT_POSITION: 15

...

game.dice(4)
=> GAME WON
```

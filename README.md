# Tic Tac Toe!
 **Microverse Ruby Project No. 3**

> Simple Tic Tac Toe game for use in the terminal

## About Tic Tac Toe
Tic Tac Toe is a fun two-person game. Each player seeks in alternate turns to complete a row, a column, or a diagonal line with either O's or X's in a 3x3 grid.
Example of winning positions:

**Vertical winning position:**
| A | B	| C	|
|---|---|---|
|   | X	|   |
| O | X |   |
| O | X	|   |

**Horizontal winning position:**
| A | B	| C	|
|---|---|---|
|   | O	|   |
| X | X | X |
| O | 	|   |

**Diagonal winning position:**
| A | B	| C	|
|---|---|---|
| X |  	|   |
| O | X |   |
| O |  	| X |

## How to play
Tic-Tac-Toe runs in the command line. It's written in Ruby, so you'll need to have ruby installed in your computer.
Once Ruby is installed simply follow the instructions:
- Open terminal
- Run `ruby bin/main.rb`
- Choose name for Player 1
- Choose name for Player 2

Player 1 plays with the "X" sign.
Player 2 plays with the "O" sign.

Tha game works as a 3x3 grid with columna A, B, C, and rows 1, 2, 3. Each turn the player will choose a position.
For example: A2, B3, A1, and so on.

|   | A | B	| C	|
|---|---|---|---|
| 1 |   |  	|   |
| 2 |   |   |   |
| 3 |   |  	|   |

The first player to complete a diagonal, horizontal, or vertical line wins.
If no player achieves this after 9 turns, the game will end, and the end result is considered to be a Draw.

## Built With

- Ruby

## Authors

👤 **Juan Camilo Patiño**

- GitHub: [@george-swift](github.com/LoxiasCam)
- Twitter: [@\_\_pragmaticdev](https://twitter.com/jcamilop96)

👤 **Carlos Castillo**

- GitHub: [@ey-charles](https://github.com/ey-charles)
- Twitter: [@crloscstillo](https://twitter.com/crloscstillo)

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Shoutout to our Stand-Up Teams

## 📝 License

This project is [MIT](https://www.mit.edu/~amini/LICENSE.md) licensed.

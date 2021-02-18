require 'pp'
require_relative "../lib/board"
require_relative "../lib/game"
require_relative "../lib/player"

game = Game.new

game.add_player("Carlos", "X")
game.add_player("Camilo", "O")

game.new_turn("Carlos", "A2")
game.new_turn("Camilo", "B3")
game.new_turn("Carlos", "A1")
game.new_turn("Camilo", "B1")
game.new_turn("Carlos", "A3")
game.show_board

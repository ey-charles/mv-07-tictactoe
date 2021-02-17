require 'pp'
require_relative "tic_tac_toe/cell"
require_relative "tic_tac_toe/board"
require_relative "tic_tac_toe/game"
require_relative "tic_tac_toe/player"

carlos = Player.new("Carlos", "X")
camilo = Player.new("Camilo", "O")

board = Board.new

pp board.grid
board.set_cell(carlos, "A1")
board.set_cell(camilo, "B3")
board.set_cell(carlos, "B2")
board.set_cell(camilo, "A2")
board.set_cell(carlos, "C3")





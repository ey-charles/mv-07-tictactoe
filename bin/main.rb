#!/usr/bin/env ruby

p 'Welcome to Tic Tac Toe!'
p 'Starting new game .  .  .'

# initialize game
p 'What\'s the name of Player 1?'
player_1_name = gets.chomp
player_1_token = 'X'

p 'What\'s the name of Player 2?'
player_2_name = gets.chomp
player_2_token = 'O'
puts "\n\n"
p '-----------------'
p 'Start the game!'
p '-----------------'
p "Player 1: #{player_1_name}"
p "Token: #{player_1_token}"
p '-----------------'
p "Player 2: #{player_2_name}"
p "Token: #{player_2_token}"
p '-----------------'
puts "\n\n"

# game = Game.new

# game.show_board
p '   A B C'
p ' ________'
p '1| - - - |'
p '2| - - - |'
p '3| - - - |'
p ' ________'
puts "\n\n"

# game.add_player(player_1_name, player_1_token)
# game.add_player(player_2_name, player_2_token)

# until game.has_winner? || game.turns > 9 do new turn:
p "Carlos\' turn:"
# game.new_turn("Carlos", "A2")
# game.show_board
p '   A B C'
p ' ________'
p '1| - - - |'
p '2| X - - |'
p '3| - - - |'
p ' ________'
puts "\n\n"

p "Camilo\'s turn:"
# game.new_turn("Camilo", "A3")
# game.show_board
p '   A B C'
p ' ________'
p '1| - - - |'
p '2| X - - |'
p '3| 0 - - |'
p ' ________'
puts "\n\n"

p "Carlos\' turn:"
# game.new_turn("Carlos", "B2")
# game.show_board
p '   A B C'
p ' ________'
p '1| - - - |'
p '2| X X - |'
p '3| 0 - - |'
p ' ________'
puts "\n\n"

p "Camilo\'s turn:"
# game.new_turn("Camilo", "C4")
# new_turn returns false on invalid move
p 'Invalid move!' # until new_turn returns true
p "Camilo\'s turn:"
# game.new_turn("Camilo", "C3")
# game.show_board
p '   A B C'
p ' ________'
p '1| - - - |'
p '2| X X - |'
p '3| 0 - 0 |'
p ' ________'
puts "\n\n"

p "Carlos\' turn:"
# game.new_turn("Carlos", "B3")
# game.show_board
p '   A B C'
p ' ________'
p '1| - - - |'
p '2| X X X |'
p '3| 0 - 0 |'
p ' ________'
# if game.has_winner? returns true
p "Player 1: #{player_1_name} won on turn: 5" # game.turns
# else, game stopped because max # of turns reached
# p 'Draw :('
# p 'No winner on this round'

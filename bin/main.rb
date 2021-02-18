#!/usr/bin/env ruby

p 'Welcome to Tic Tac Toe!'
p 'Starting new game .  .  .'

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

p '   A B C'
p ' ________'
p '1| - - - |'
p '2| - - - |'
p '3| - - - |'
p ' ________'
puts "\n\n"

p "Carlos\' turn:"

p '   A B C'
p ' ________'
p '1| - - - |'
p '2| X - - |'
p '3| - - - |'
p ' ________'
puts "\n\n"

p "Camilo\'s turn:"

p '   A B C'
p ' ________'
p '1| - - - |'
p '2| X - - |'
p '3| 0 - - |'
p ' ________'
puts "\n\n"

p "Carlos\' turn:"

p '   A B C'
p ' ________'
p '1| - - - |'
p '2| X X - |'
p '3| 0 - - |'
p ' ________'
puts "\n\n"

p "Camilo\'s turn:"

p 'Invalid move!'
p "Camilo\'s turn:"

p '   A B C'
p ' ________'
p '1| - - - |'
p '2| X X - |'
p '3| 0 - 0 |'
p ' ________'
puts "\n\n"

p "Carlos\' turn:"

p '   A B C'
p ' ________'
p '1| - - - |'
p '2| X X X |'
p '3| 0 - 0 |'
p ' ________'

p "Player 1: #{player_1_name} won on turn: 5"
puts "\n"
p 'Want to play again?'

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

p '   A B C'
p ' ________'
p '1| - - - |'
p '2| - - - |'
p '3| - - - |'
p ' ________'
puts "\n\n"

p "Carlos\' turn:"

p '   A B C'
p ' ________'
p '1| - - - |'
p '2| X - - |'
p '3| - - - |'
p ' ________'
puts "\n\n"

p "Camilo\'s turn:"

p '   A B C'
p ' ________'
p '1| - - - |'
p '2| X - - |'
p '3| 0 - - |'
p ' ________'
puts "\n\n"

p "Carlos\' turn:"

p '   A B C'
p ' ________'
p '1| - - - |'
p '2| X X - |'
p '3| 0 - - |'
p ' ________'
puts "\n\n"

p "Camilo\'s turn:"

p 'Invalid move!'
p "Camilo\'s turn:"

p '   A B C'
p ' ________'
p '1| - - - |'
p '2| X X - |'
p '3| 0 - 0 |'
p ' ________'
puts "\n\n"

p "Carlos\' turn:"

p '   A B C'
p ' ________'
p '1| - - X |'
p '2| X X - |'
p '3| 0 - 0 |'
p ' ________'
puts "\n\n"

p "Camilo\'s turn:"

p '   A B C'
p ' ________'
p '1| - - X |'
p '2| X X 0 |'
p '3| 0 - 0 |'
p ' ________'
puts "\n\n"

p "Carlos\' turn:"

p '   A B C'
p ' ________'
p '1| - X X |'
p '2| X X 0 |'
p '3| 0 - 0 |'
p ' ________'
puts "\n\n"

p "Camilo\'s turn:"

p '   A B C'
p ' ________'
p '1| 0 X X |'
p '2| X X 0 |'
p '3| 0 - 0 |'
p ' ________'
puts "\n\n"

p "Carlos\' turn:"

p '   A B C'
p ' ________'
p '1| 0 X X |'
p '2| X 0 0 |'
p '3| 0 X X |'
p ' ________'
puts "\n\n"

p 'Draw :('
p 'No winner this round.'
puts "\n"
p 'Want to play again?'

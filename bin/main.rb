#!/usr/bin/env ruby

p 'Welcome to Tic Tac Toe!'
p 'Starting new game .  .  .'

# initialize game
p 'What\'s the name of Player 1?'
player_1_name = gets.chomp
player_1_token = "X"

p 'What\'s the name of Player 2?'
player_2_name = gets.chomp
player_2_token = "O"
puts "\n\n"
p "--------------"
p "Start the game!"
p "--------------"
p "Player 1: #{player_1_name}"
p "Token: #{player_1_token}"
p "--------------"
p "Player 2: #{player_2_name}"
p "Token: #{player_2_token}"

# game = Game.new
# game.add_player(player_1_name, player_1_token)
# game.add_player(player_2_name, player_2_token)

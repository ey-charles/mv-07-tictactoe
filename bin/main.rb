#!/usr/bin/env ruby
require_relative '../lib/board'
require_relative '../lib/game'
require_relative '../lib/player'

p '------------------------'
p 'Welcome to Tic Tac Toe!'
p '------------------------'
p 'Starting new game . . .'

# initialize game
game = Game.new

p 'What\'s the name of Player 1?'
player_1_name = gets.chomp
player_1_token = 'X'

game.add_player(player_1_name, player_1_token);

p 'What\'s the name of Player 2?'
player_2_name = gets.chomp
player_2_token = 'O'

game.add_player(player_2_name, player_2_token);

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
puts "\n"

p 'New empty board:'
p '   A B C'
p ' ________'
p '1| - - - |'
p '2| - - - |'
p '3| - - - |'
p ' ________'

until game.ends?
  game.players.each { |player|
    valid_turn = false

    puts "\n"
    p '-----------------'
    p "Turn #{game.turns}:"
    p "Player: #{player[1].name}"
    p '-----------------'

    until valid_turn
      game.show_board
      puts 'Choose your move:'

      valid_turn = game.new_turn(player[1].name, gets.chomp)

      puts "\nInvalid move! Try again" unless valid_turn

      puts "\n"
    end

    game.check_for_win

    break if game.ends?
  }
end

if game.winner
  p 'We have a winner!!! :D'
else
  p 'Draw :('
  p 'Nobody won'
end

game.show_board

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
player_1_name = ''
player_2_name = ''

while player_1_name.empty?
  puts "\n"
  p 'What\'s the name of Player 1?'
  player_1_name = gets.chomp
  player_1_token = 'X'
  p 'No name detected! Please input a valid name' if player_1_name.empty?
end

game.add_player(player_1_name, player_1_token)

while player_2_name.empty? || player_2_name == player_1_name
  puts "\n"
  p 'What\'s the name of Player 2?'
  player_2_name = gets.chomp
  player_2_token = 'O'
  p 'No name detected! Please input a valid name' if player_2_name.empty?
  p 'Input a different name for Player 2!' if player_2_name == player_1_name
end

game.add_player(player_2_name, player_2_token)

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
  game.players.each do |player|
    valid_turn = false

    puts "\n"
    p '-----------------'
    p "Turn #{game.turns}:"
    p "Player: #{player[1].name}"
    p '-----------------'

    until valid_turn
      game.show_board
      puts 'Choose your move, select the column (A, B, C) and row (1, 2, 3):'
      puts 'For example: A2 or c3'

      valid_turn = game.new_turn(player[1].name, gets.chomp.upcase)

      puts "\nInvalid move! Try again" unless valid_turn

      puts "\n"
    end

    game.check_for_win

    p "Player: #{player[1].name} won!" if game.winner

    break if game.ends?
  end
end

if game.winner
  p 'We have a winner!!! :D'
else
  p 'Draw :('
  p 'Nobody won'
end

game.show_board

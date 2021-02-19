#!/usr/bin/env ruby

require_relative '../lib/board'
require_relative '../lib/game'
require_relative '../lib/player'

puts '------------------------'
puts 'Welcome to Tic Tac Toe!'
puts '------------------------'
puts 'Starting new game . . .'

game = Game.new

puts 'What\'s the name of Player 1?'
player_1_name = gets.chomp
player_1_token = 'X'

game.add_player(player_1_name, player_1_token)

puts 'What\'s the name of Player 2?'
player_2_name = gets.chomp
player_2_token = 'O'

game.add_player(player_2_name, player_2_token)

puts "\n\n"
puts '-----------------'
puts 'Start the game!'
puts '-----------------'
puts "Player 1: #{player_1_name}"
puts "Token: #{player_1_token}"
puts '-----------------'
puts "Player 2: #{player_2_name}"
puts "Token: #{player_2_token}"
puts '-----------------'
puts "\n"

puts "New empty board:\n"
puts "   A B C\n"
puts " ________\n"
puts "1| - - - |\n"
puts "2| - - - |\n"
puts "3| - - - |\n"
puts " ________\n"

until game.ends?
  game.players.each do |player|
    valid_turn = false

    puts "\n"
    puts '-----------------'
    puts "Turn #{game.turns}:"
    puts "Player: #{player[1].name}"
    puts '-----------------'

    puts 'This is the current board: '
    puts game.show_board

    until valid_turn
      puts 'Choose your move, select the column (A, B, C) and row (1, 2, 3):'
      puts 'For example: A2 or c3'

      valid_turn = game.new_turn(player[1].name, gets.chomp.upcase)

      puts "\nInvalid move! Try again" unless valid_turn

      puts "\n"
    end

    game.check_for_win

    break if game.ends?
  end
end

if game.winner
  puts 'We have a winner!!! :D'
  puts "\nThis is the final board:"
  puts game.show_board
else
  puts 'Draw :('
  puts 'Nobody won'
end

game.show_board

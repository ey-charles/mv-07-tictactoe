#!/usr/bin/env ruby

p '------------------------'
p 'Welcome to Tic Tac Toe!'
p '------------------------'
p 'Starting new game . . .'

# game = Game.new

p 'What\'s the name of Player 1?'
player_1_name = gets.chomp

# game.add_player(player_1_name)

p 'What\'s the name of Player 2?'
player_2_name = gets.chomp

# game.add_player(player_2_name)

puts "\n\n"
p '-----------------'
p 'Start the game!'
p '-----------------'
p "Player 1: #{player_1_name}"
p 'Token: X'
p '-----------------'
p "Player 2: #{player_2_name}"
p 'Token: O'
p '-----------------'
puts "\n"

p 'New empty board:'
p '   A B C'
p ' ________'
p '1| - - - |'
p '2| - - - |'
p '3| - - - |'
p ' ________'

game_ends = false

players = []
players.push(player_1_name)
players.push(player_2_name)

until game_ends
  players.each do |player|
    valid_turn = false

    puts "\n"
    p '-----------------'
    p 'Turn 2'
    p "Player: #{player}"
    p '-----------------'

    until valid_turn
      # game.show_board
      puts 'Choose your move:'
      puts "\n(Choose A2 to get out of loop)"

      move = gets.chomp

      valid_turn = true if move == 'A2'

      puts "\nInvalid move! Try again" unless valid_turn

      puts "\n"
    end

    # game.check_for_win
    # break if game_ends

    game_ends = true
  end
end

game_winner = true

if game_winner
  p 'We have a winner!!! :D'
else
  p 'Draw :('
  p 'Nobody won'
end

# game.show_board
p 'Final board:'
p '   A B C'
p ' ________'
p '1| X - - |'
p '2| O X - |'
p '3| O - X |'
p ' ________'

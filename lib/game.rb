class Game
  attr_reader :players
  attr_reader :turns

  def initialize
    @players = Hash.new
    @board = Board.new
    @winner = nil
    @turns = 0
  end

  def add_player(name, token)
    # max. number of players is 2
    return false if @players.length >= 2

    players[name] = Player.new(name, token) 
  end

  def show_board
    p "This is the current board:"
    @board.show_board
  end

  def new_turn(player_name, position)
    if @winner
      p "No moves allowed. There's already a winner."
      return false
    end

    @winner = @board.set_cell(@players[player_name], position)
    @turns += 1

    p "#{player_name} is the winner!" if @winner
  end
end

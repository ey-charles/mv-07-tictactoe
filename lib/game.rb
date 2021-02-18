class Game
  attr_reader :players
  attr_reader :turns

  def initialize
    @players = {}
    @board = Board.new
    @winner = nil
    @turns = 1
  end

  public

  def add_player(name, token)
    # max. number of players is 2
    return false if @players.length >= 2

    players[name] = Player.new(name, token) 
  end

  def show_board
    p 'This is the current board:'
    @board.show_board
  end

  # Executes a new turn by a player
  # Returns:
  # 
  def new_turn(player_name, position)
    @board.set_cell(@players[player_name], position)
  end

end

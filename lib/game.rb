class Game
  attr_reader :players, :turns, :winner

  def initialize
    @players = {}
    @board = Board.new
    @winner = false
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

  def check_for_win
    @winner = @board.winner?
  end

  # Check if game has a winner
  def ends?
    return true if turns > 9
    return true if @winner
    false
  end

  def set_winner
    @winner = true
  end

  # Executes a new turn by a player
  # Returns: boolean
  def new_turn(player_name, position)
    if @board.set_cell(@players[player_name], position)
      @turns += 1
      return true
    end

    false
  end

end
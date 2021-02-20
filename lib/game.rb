class Game
  attr_reader :players, :turns, :winner

  def initialize
    @players = {}
    @board = Board.new
    @winner = false
    @turns = 1
  end

  def add_player(name, token)
    return false if @players.length >= 2

    players[name] = Player.new(name, token)
  end

  def show_board
    @board.show_board
  end

  def check_for_win
    @winner = @board.winner?
  end

  def ends?
    return true if turns > 9
    return true if @winner

    false
  end

<<<<<<< HEAD
  # Executes a new turn by a player
  # Returns: boolean
=======
  def set_winner
    @winner = true
  end

>>>>>>> bbc676ab5387ac7ac5fc964dc964ab63e0846b07
  def new_turn(player_name, position)
    if @board.set_cell(@players[player_name], position)
      @turns += 1
      return true
    end

    false
  end
end

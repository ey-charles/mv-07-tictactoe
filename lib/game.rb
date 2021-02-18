class Game
  attr_reader :players
  attr_reader :turns

  def initialize
    @players = Hash.new
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
    p "This is the current board:"
    @board.show_board
  end

  # Executes a new turn by a player
  # Returns:
  # 
  def new_turn(player_name, position)
    return false unless valid_position?(position)

    @turns += 1

    @board.set_cell(@players[player_name], position)
  end

  private

  def valid_position?(position)
    return false unless position.is_a? String
    return false unless position.length == 2
    return false unless %w[A B C].any? { |column| position[0].include? column }
    return false unless %w[1 2 3].any? { |row| position[1].include? row }
    
    true
  end
end

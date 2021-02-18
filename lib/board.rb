class Board
  attr_reader :grid

  def initialize
    @grid = create_grid
  end

  def create_grid
    @grid = {
      'A1' => nil, 'A2' => nil, 'A3' => nil,
      'B1' => nil, 'B2' => nil, 'B3' => nil,
      'C1' => nil, 'C2' => nil, 'C3' => nil
    }
  end

  def set_cell(player, cell_id)
    return false unless valid_position?(cell_id)

    @grid[cell_id] = player.token
    cell_id
  end

  private

  def valid_position?(position)
    return false unless position.is_a? String
    return false unless position.length == 2
    return false unless %w[A B C].any? { |column| position[0].include? column }
    return false unless %w[1 2 3].any? { |row| position[1].include? row }
    return false unless @grid[position].nil?

    true
  end

  def winner?
    check_horizontal_win? || check_vertical_win? || check_diagonal_win?
  end

  public

  def show_board
    %w[1 2 3].each { |i| p @grid.select { |k| k.include? i }.values }
  end

  private

  def check_horizontal_win?
    check_linear_win?(%w[1 2 3])
  end

  def check_vertical_win?
    check_linear_win?(%w[A B C])
  end

  def check_linear_win?(matrix)
    matrix.each { |i|
      vector = @grid.select { |k| k.include? i }.values
      next unless vector.all?
      return true if vector.all? { |element| element == vector[0] }
    }

    # We have no winner if we get to this point
    false
  end

  def check_diagonal_win?
    diag1 = @grid.slice('A1', 'B2', 'C3').values
    diag2 = @grid.slice('C1', 'B2', 'A3').values

    return false unless diag1.all? || diag2.all?

    return true if diag1.all? { |element| element == diag1[0] }
    return true if diag2.all? { |element| element == diag2[0] }
  end
end

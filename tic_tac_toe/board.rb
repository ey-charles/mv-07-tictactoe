class Board
  attr_reader :grid

  def initialize
    @grid = create_grid
  end

  def create_grid
    grid = {
      "A1" => nil,
      "A2" => nil,
      "A3" => nil,
      "B1" => nil,
      "B2" => nil,
      "B3" => nil,
      "C1" => nil,
      "C2" => nil,
      "C3" => nil,
    }
  end

  def set_cell(player, cell_id)
    unless @grid[cell_id].nil?
      p "Invalid move to #{cell_id} by #{player.name}"
      return false
    end

    @grid[cell_id] = player.token
    p "#{player.name} marked the cell #{cell_id} with his/her token: #{player.token}."

    p "---" if winner?
    
  end

  def winner?
    check_horizontal_win?
    # if check_horizontal_win? || check_vertical_win? || check_diagonal_win?
    #   return true
    # end; return false
  end

  def check_horizontal_win?
    %w[1 2 3].each { |i|
      row = @grid.select { |k| k.include? i }
      return true if row.compact.values.uniq.length == 1
    }
    # We have no winner if we get to this point
    return false
  end

  def check_vertical_win?
    %w[A B C].each { |i|
      row = @grid.select { |k| k.include? i }
      return true if row.compact.values.uniq.length == 1
    }
    # We have no winner if we get to this point
    return false
  end

  # def check_diagonal_win?
  #   if !@grid["A1"].value.empty? && @grid["A1"].value == @grid["B2"].value && @grid["B2"].value == @grid["C3"].value
  #     return true
  #   elsif !@grid["C1"].value.empty? && @grid["C1"].value == @grid["B2"].value && @grid["B2"].value == @grid["A3"].value
  #     return true
  #   else
  #     return false
  #   end
  # end
end

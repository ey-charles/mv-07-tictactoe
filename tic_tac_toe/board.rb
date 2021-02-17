class Board
  attr_reader :grid

  def initialize
    @grid = create_grid
  end

  def create_grid
    grid = {
      "A1" => Cell.new,
      "A2" => Cell.new,
      "A3" => Cell.new,
      "B1" => Cell.new,
      "B2" => Cell.new,
      "B3" => Cell.new,
      "C1" => Cell.new,
      "C2" => Cell.new,
      "C3" => Cell.new,
    }
  end

  def set_cell(player, cell_id)
    unless @grid[cell_id].value.empty?
      p "Invalid move to #{cell_id} by #{player.name}"
      return false
    end

    p "#{player.name} marked the cell #{cell_id} with his/her token: #{player.token}."

    @grid[cell_id].value = player.token

    if check_win_conditions?
      p "#{player.name} won!" 
    end
  end

  def check_win_conditions?
    if check_horizontal_win? || check_vertical_win? || check_diagonal_win?
      return true
    end; return false
  end

  def check_horizontal_win?
    if !@grid["A1"].value.empty? && @grid["A1"].value == @grid["A2"].value && @grid["A2"].value == @grid["A3"].value
      return true
    elsif !@grid["B1"].value.empty? && @grid["B1"].value == @grid["B2"].value && @grid["B2"].value == @grid["B3"].value
      return true
    elsif !@grid["C1"].value.empty? && @grid["C1"].value == @grid["C2"].value && @grid["C2"].value == @grid["C3"].value
      return true
    else
      return false
    end
  end

  def check_vertical_win?
    if !@grid["A1"].value.empty? && @grid["A1"].value == @grid["B1"].value && @grid["B1"].value == @grid["C1"].value
      return true
    elsif !@grid["A2"].value.empty? && @grid["A2"].value == @grid["B2"].value && @grid["B2"].value == @grid["C2"].value
      return true
    elsif !@grid["A3"].value.empty? && @grid["A3"].value == @grid["B3"].value && @grid["B3"].value == @grid["C3"].value
      return true
    else
      return false
    end
  end

  def check_diagonal_win?
    if !@grid["A1"].value.empty? && @grid["A1"].value == @grid["B2"].value && @grid["B2"].value == @grid["C3"].value
      return true
    elsif !@grid["C1"].value.empty? && @grid["C1"].value == @grid["B2"].value && @grid["B2"].value == @grid["A3"].value
      return true
    else
      return false
    end
  end
end
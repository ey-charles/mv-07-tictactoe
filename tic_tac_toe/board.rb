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
  end
end

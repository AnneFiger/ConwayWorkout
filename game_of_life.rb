class GameOfLife
  def get_next_grid(current_grid)
    new_grid = current_grid

    new_grid.map.with_index { |row, row_index|
      row.map.with_index { |cell, column_index|
        living_neighbours_count = number_of_living_neighbours(row_index, column_index, new_grid)
        new_state_of_cell(cell, living_neighbours_count)
      }
    }
    
  end

  def new_state_of_cell(cell, living_neighbours_count)
    if living_neighbours_count == 3
      return :live 
    elsif living_neighbours_count == 2
      return cell
    else
     return :dead
    end 
  end

  def number_of_living_neighbours(cell_row, cell_column, grid)

    count = 0

    grid.each do |subarray|
      subarray.each do |cell|
        if cell == :live
          count += 1
        end
      end 
    end   

    return count 
  end
end

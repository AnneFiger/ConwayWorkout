class GameOfLife
  def get_next_grid(current_grid)
    new_grid = current_grid

    new_grid.map.with_index { |row, row_index|
      row.map.with_index { |cell, column_index| #return row_index somehow?
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

  def target_finder
    #if has no cell_row etc specified uses/default to this function to calculate them 
    # or have in-built method in get_next_grid and remove row_cell etc in all unit tests
  end  

  def number_of_living_neighbours(cell_row, cell_column, grid)
    immediate_neighboorhood = []
    immediate_neighboorhood_rows = grid[cell_row-1..cell_row+1]
    lookup_row1 = immediate_neighboorhood_rows[0]
    immediate_neighboorhood.push(lookup_row1[cell_column-1..cell_column+1])
    lookup_row2 = immediate_neighboorhood_rows[1]
    immediate_neighboorhood.push(lookup_row2[cell_column-1..cell_column+1])
    lookup_row3 = immediate_neighboorhood_rows[2]
    immediate_neighboorhood.push(lookup_row3[cell_column-1..cell_column+1])


    count = 0

    immediate_neighboorhood.each do |subarray|
      subarray.each do |cell|
        if cell == :live
          count += 1
        end
      end 
    end   

    return count 
  end
end

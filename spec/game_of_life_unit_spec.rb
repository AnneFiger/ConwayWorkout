describe GameOfLife do
  context '#new_state_of_cell' do
    context 'when cell is dead' do
      it 'stays dead if its neighbours are all dead' do
        initial_state = :dead
        living_neighbours_count = 0

        new_state = subject.new_state_of_cell(initial_state, living_neighbours_count)

        expect(new_state).to eq(:dead)
      end
    end
  end

  context '#number_of_living_neighbours' do
    it 'returns 0 given the middle cell in a dead grid' do
      target_cell = :dead

      dead_cells = [
        [:dead, :dead,        :dead],
        [:dead, :target_cell, :dead],
        [:dead, :dead,        :dead]
      ]

      cell_row = 1
      cell_column = 1

      expect(
        subject.number_of_living_neighbours(cell_row, cell_column, dead_cells)
      ).to eq(0)
    end
  end

  context '#number_of_living_neighbours' do
    it 'returns 1 given the middle cell in a grid with one living neighbour' do
      target_cell = :dead

      some_cells = [
        [:dead, :dead,        :dead],
        [:dead, :target_cell, :live],
        [:dead, :dead,        :dead]
      ]

      cell_row = 1
      cell_column = 1

      expect(
        subject.number_of_living_neighbours(cell_row, cell_column, some_cells)
      ).to eq(1)
    end
  end

  context '#number_of_living_neighbours' do
    it 'returns 3 given the middle cell in a grid with 3 living neighbours' do
      target_cell = :live

      some_cells = [
        [:live, :dead,        :dead],
        [:dead, :target_cell, :live],
        [:live, :dead,        :dead]
      ]

      cell_row = 1
      cell_column = 1

      expect(
        subject.number_of_living_neighbours(cell_row, cell_column, some_cells)
      ).to eq(3)
    end
  end

  context '#new_state_of_cell' do
    context 'when cell is alive' do
      it 'stays alive if it has two live neighbours' do
        initial_state = :live
        living_neighbours_count = 2
        new_state = subject.new_state_of_cell(initial_state, living_neighbours_count)
        expect(new_state).to eq(:live)
      end
    end
  end

  context '#new_state_of_cell' do
    context 'when cell is alive' do
      it 'stays alive if it has three live neighbours' do
        initial_state = :live
        living_neighbours_count = 3
        new_state = subject.new_state_of_cell(initial_state, living_neighbours_count)
        expect(new_state).to eq(:live)
      end
    end
  end

  context '#new_state_of_cell' do
    context 'when cell is alive' do
      it 'dies if it has one live neighbours only' do
        initial_state = :live
        living_neighbours_count = 1
        new_state = subject.new_state_of_cell(initial_state, living_neighbours_count)
        expect(new_state).to eq(:dead)
      end
    end
  end

  context '#new_state_of_cell' do
    context 'when cell is alive' do
      it 'dies if it has no live neighbours' do
        initial_state = :live
        living_neighbours_count = 0
        new_state = subject.new_state_of_cell(initial_state, living_neighbours_count)
        expect(new_state).to eq(:dead)
      end
    end
  end

  context '#new_state_of_cell' do
    context 'when cell is alive' do
      it 'dies if it has four live neighbours' do
        initial_state = :live
        living_neighbours_count = 4
        new_state = subject.new_state_of_cell(initial_state, living_neighbours_count)
        expect(new_state).to eq(:dead)
      end
    end
  end

  context '#new_state_of_cell' do
    context 'when cell is alive' do
      it 'dies if it has eight live neighbours' do
        initial_state = :live
        living_neighbours_count = 8
        new_state = subject.new_state_of_cell(initial_state, living_neighbours_count)
        expect(new_state).to eq(:dead)
      end
    end
  end

  context '#new_state_of_cell' do
    context 'when cell is dead' do
      it 'become alive if it has three live neighbours' do
        initial_state = :dead
        living_neighbours_count = 3
        new_state = subject.new_state_of_cell(initial_state, living_neighbours_count)
        expect(new_state).to eq(:live)
      end
    end
  end

  context '#number_of_living_neighbours' do
    it 'returns 3 given the cell at a given position in a 4x4 grid with 3 living neighbours' do
      target_cell = :live

      some_cells = [
        [ :dead, :dead,        :dead, :dead ],
        [ :dead, :target_cell, :live, :dead ],
        [ :dead, :live,        :live, :dead ],
        [ :dead, :dead,        :dead, :dead ]
      ]

      cell_row = 1
      cell_column = 1

      expect(
        subject.number_of_living_neighbours(cell_row, cell_column, some_cells)
      ).to eq(3)
    end
  end

  context '#number_of_living_neighbours' do
    it 'returns 3 given the cell at a given position in a 4x4 grid with 3 living neighbours' do
      target_cell = :live

      some_cells = [
        [ :dead, :dead,        :dead, :dead ],
        [ :dead, :live,        :live, :dead ],
        [ :dead, :target_cell, :live, :dead ],
        [ :dead, :dead,        :dead, :dead ]
      ]

      cell_row = 2
      cell_column = 1

      expect(
        subject.number_of_living_neighbours(cell_row, cell_column, some_cells)
      ).to eq(3)
    end
  end

  context '#number_of_living_neighbours' do
    it 'returns 3 given the cell at a given position in a 4x4 grid with 3 living neighbours' do
      target_cell = :dead

      some_cells = [
        [ :dead, :dead,        :dead, :dead ],
        [ :dead, :live,        :live, :dead ],
        [ :dead, :live, :target_cell, :dead ],
        [ :dead, :dead,        :dead, :dead ]
      ]

      cell_row = 2
      cell_column = 2

      expect(
        subject.number_of_living_neighbours(cell_row, cell_column, some_cells)
      ).to eq(3)
    end
  end

  context '#number_of_living_neighbours' do
    it 'returns 3 given the cell at a given position in a 4x4 grid with 3 living neighbours' do
      target_cell = :dead

      some_cells = [
        [ :dead, :dead,        :dead, :dead ],
        [ :dead, :live,        :live, :dead ],
        [ :dead, :live, :target_cell, :dead ],
        [ :dead, :dead,        :dead, :dead ]
      ]

      cell_row = 2
      cell_column = 2

      expect(
        subject.number_of_living_neighbours(cell_row, cell_column, some_cells)
      ).to eq(3)
    end
  end

  context '#number_of_living_neighbours' do
    it 'returns 2 given the cell at a given position in a 5x5 grid with 2 living neighbours' do
      target_cell = :dead

      some_cells = [
          [ :dead, :dead, :dead,        :dead, :dead ],
          [ :dead, :dead, :live,        :dead, :dead ],
          [ :dead, :dead, :target_cell, :dead, :dead ],
          [ :dead, :dead, :live,        :dead, :dead ],
          [ :dead, :dead, :dead,        :dead, :dead ]
        ]

      cell_row = 2
      cell_column = 2

      expect(
        subject.number_of_living_neighbours(cell_row, cell_column, some_cells)
      ).to eq(2)
    end
  end

  context '#number_of_living_neighbours' do
    it 'returns 2 given a cell in a 5x5 grid with 2 living neighbours and does not count living cells outside of direct neighboorhood' do
      target_cell = :dead

      some_cells = [
          [ :dead, :dead, :dead,        :dead, :live ],
          [ :dead, :dead, :live,        :dead, :dead ],
          [ :dead, :dead, :target_cell, :dead, :dead ],
          [ :dead, :dead, :live,        :dead, :dead ],
          [ :live, :dead, :dead,        :dead, :dead ]
        ]

      cell_row = 2
      cell_column = 2

      expect(
        subject.number_of_living_neighbours(cell_row, cell_column, some_cells)
      ).to eq(2)
    end
  end

  
  context '#number_of_living_neighbours' do
    context 'does not need to be specified cell_row and cell_column, find it by itself' do
      it 'returns 2 given a cell in a 5x5 grid with 2 living neighbours and does not count living cells outside of direct neighboorhood' do
        target_cell = :dead

        some_cells = [
            [ :dead, :dead, :dead,        :dead, :live ],
            [ :dead, :dead, :live,        :dead, :dead ],
            [ :dead, :dead, :target_cell, :dead, :dead ],
            [ :dead, :dead, :live,        :dead, :dead ],
            [ :live, :dead, :dead,        :dead, :dead ]
          ]

        # cell_row = 2
        # cell_column = 2

        expect(
          subject.number_of_living_neighbours(cell_row, cell_column, some_cells) #cell_row is the problem here
        ).to eq(2)
      end
    end
  end

  

  

end
require_relative '../lib/board.rb'
require_relative '../lib/player.rb'

describe Board do
  let(:board) { Board.new }
  let(:player) { Player.new('Camilo', 'X') }

  context '#initialize' do
    it 'creates a board when initialized' do
      expect { Board.new }.to_not raise_error
    end
  end

  describe '#show_board' do
    it 'returns an empty board at the start of the game' do
      expect(board.show_board).not_to include 'X' || '0'
    end
  end

  context 'when playing a turn' do
    it 'raises error on empty move' do
      expect { board.set_cell }.to raise_error(ArgumentError)
    end

    it "returns false when player's move is invalid" do
      expect(board.set_cell('invalid', 'move')).to be false
    end

    it "returns true when player's move is valid" do
      expect(board.set_cell(player, 'A2')).to be true
    end

    it "shows player's move on the board" do
      board.set_cell(player, 'A2')
      expect(board.show_board).to include 'X'
    end
  end
end

require_relative '../lib/game.rb'
require_relative '../lib/board.rb'
require_relative '../lib/player.rb'

describe Game do
  let(:game) { Game.new }
  let(:player1) { Player.new('Camilo', 'X') }
  let(:player2) { Player.new('Carlos', '0') }

  context '#initialize' do
    it 'creates a new game when initialized' do
      expect { Game.new }.to_not raise_error
    end
  end

  describe '#add_player' do
    it 'raise error on invalid player' do
      expect { game.add_player }.to raise_error(ArgumentError)
    end

    it 'returns false when game has more than two players' do
      game.add_player(player1.name, player1.token)
      game.add_player(player2.name, player2.token)
      expect(game.add_player('Player3', 'Token3')).to be false
    end
  end

  describe '#show_board' do
    it 'returns an empty board at the start of the game' do
      expect(game.show_board).not_to include 'X' || '0'
    end

    it "shows player's move on the board" do
      game.add_player(player1.name, player1.token)
      game.add_player(player2.name, player2.token)
      game.new_turn('Camilo', 'A2')
      expect(game.show_board).to include 'X'
    end
  end

  describe '#new_turn' do
    it 'returns false on an invalid turn' do
      game.add_player(player1.name, player1.token)
      game.add_player(player2.name, player2.token)
      game.new_turn('Camilo', 'A2')
      expect(game.new_turn('Carlos', 'A2')).to be false
    end

    it 'increases turn number after a valid move' do
      game.add_player(player1.name, player1.token)
      game.add_player(player2.name, player2.token)
      expect { game.new_turn('Camilo', 'A2') }.to change { game.turns }.by(1)
    end

    it 'returns true on a valid turn' do
      game.add_player(player1.name, player1.token)
      game.add_player(player2.name, player2.token)
      expect(game.new_turn('Camilo', 'A2')).to be true
    end
  end

  context '#winner' do
    it 'returns false when there is no winner' do
      expect(game.winner).to be false
    end

    it 'returns true when there is a winner' do
      game.add_player(player1.name, player1.token)
      game.new_turn('Camilo', 'A1')
      game.new_turn('Camilo', 'A2')
      game.new_turn('Camilo', 'A3')
      game.check_for_win
      expect(game.winner).to be true
    end
  end

  describe '#ends?' do
    it 'returns true after maximum number of turns' do
      game.add_player(player1.name, player1.token)
      game.add_player(player2.name, player2.token)
      game.new_turn('Camilo', 'A1')
      game.new_turn('Carlos', 'A2')
      game.new_turn('Camilo', 'A3')
      game.new_turn('Camilo', 'B1')
      game.new_turn('Carlos', 'B2')
      game.new_turn('Camilo', 'B3')
      game.new_turn('Carlos', 'C1')
      game.new_turn('Camilo', 'C2')
      game.new_turn('Carlos', 'C3')
      expect(game.ends?).to be true
    end

    it 'returns true if there is a winner' do
      game.add_player(player1.name, player1.token)
      game.new_turn('Camilo', 'A1')
      game.new_turn('Camilo', 'A2')
      game.new_turn('Camilo', 'A3')
      game.check_for_win
      expect(game.ends?).to be true
    end

    it 'returns false when game continues' do
      expect(game.ends?).to be false
    end
  end
end

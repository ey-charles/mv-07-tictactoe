#spec/game_spec.rb
require './lib/game.rb'

describe game do
  describe add_player do
    it "creates a new player" do
      player = Player.new
      expect(player.add_player)
  end
end
#spec/game_spec.rb
require './lib/player.rb'

describe player do
  context "#initialize" do
    it "raise exception when initialized empty" do
      expect { Player.new() }.to raise_error
    end

    it "does not raise error when initialized correctly" do
      name = 'nombre'
      token = 'X'
      expect { Player.new(name, token) }.to_not raise_error
    end
  end
  
  context name do
    it "returns the player's name" do
      name = 'nombre'
      token = 'X'
      player = Player.new(name, token)
      expect(player.name).to eq "nombre"
    end
  end

  context token do
    it "returns the player's token" do
      name = 'nombre'
      token = 'X'
      player = Player.new(name, token)
      expect(player.token).to eq "X"
    end
  end
end
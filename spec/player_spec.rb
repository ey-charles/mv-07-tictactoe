require_relative '../lib/player.rb'

describe Player do
  let(:player) { Player.new('nombre', 'X') }

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

  context "#name" do
    it "returns the player's name" do
      expect(player.name).to eq "nombre"
    end
  end

  context "#token" do
    it "returns the player's token" do
      expect(player.token).to eq "X"
    end
  end
end
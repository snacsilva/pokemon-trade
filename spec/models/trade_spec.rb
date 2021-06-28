require 'rails_helper'

RSpec.describe Trade, type: :model do
  let(:trade) { build(:trade) }
  let(:left) { TradePokemon.sides["left"] }
  let(:right) { TradePokemon.sides["right"] }

  it "expects to be invalid without at least one pokemon on each side" do
    expect(trade).to be_invalid
  end

  it "expects to be valid with one pokemon on each side" do
    trade.add_pokemon(build(:mew), left)
    trade.add_pokemon(build(:mewtwo), right)

    expect(trade).to be_valid
  end

  it "has many traded pokemons" do
    trade.add_pokemon(build(:mew), left)
    trade.add_pokemon(build(:mewtwo), right)

    expect(trade.trade_pokemons.map(&:class).uniq).to eq([TradePokemon])
  end
end

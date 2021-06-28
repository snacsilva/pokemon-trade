require 'rails_helper'

RSpec.describe TradePokemon, type: :model do
  describe "#side" do
    it "is valid with 'right'" do
      trade_pokemon = build(:trade_pokemon, side: TradePokemon.sides["right"])
      expect(trade_pokemon).to be_valid
    end

    it "is valid with 'left'" do
      trade_pokemon = build(:trade_pokemon, side: TradePokemon.sides["left"])
      expect(trade_pokemon).to be_valid
    end

    it "is invalid with nil" do
      trade_pokemon = build(:trade_pokemon, side: nil)
      expect(trade_pokemon).to be_invalid
    end

    it "is invalid with value outside of enum" do
      expect { build(:trade_pokemon, side: "top") }.to raise_error(ArgumentError)
    end
  end

  it "belongs to pokemon" do
    trade_pokemon = build(:trade_pokemon)
    expect(trade_pokemon.pokemon).to be_instance_of(Pokemon)
  end

  it "belongs to an trade" do
    trade_pokemon = build(:trade_pokemon)
    expect(trade_pokemon.trade).to be_instance_of(Trade)
  end
end

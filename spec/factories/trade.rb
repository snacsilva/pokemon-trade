FactoryBot.define do
  factory :trade_pokemon do
    side { TradePokemon.sides["right"] }
    pokemon
    trade
  end

  factory :trade do
  end
end
class Trades
  POKEMON_TRADE_MAX_DIFF = 10

  def self.simulate sides
    @trade = Trade.new
    trade_pokemons(sides)
    @trade 
  end

  def self.is_fair? trade
    difference(trade) < POKEMON_TRADE_MAX_DIFF
  end

  private

  def self.difference trade
    (trade.left_side_pokemons.sum(&:score) - trade.right_side_pokemons.sum(&:score)).abs
  end

  def self.trade_pokemons sides
    trade_side(sides[:left], TradePokemon.sides[:left])
    trade_side(sides[:right], TradePokemon.sides[:right])
  end

  def self.trade_side(pokemon_names, side)
    pokemon_names.map do |pokemon_name|
      pokemon = Pokemon.find_by(name: pokemon_name)
      @trade.add_pokemon(pokemon, side)
    end
  end
end

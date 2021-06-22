class Trade < ApplicationRecord
  has_many :trade_pokemons, dependent: :destroy

  validate :minimum_one_pokemon_on_each_side?

  scope :history, -> { order(created_at: :desc) }

  def add_pokemon(pokemon, side)
    trade_pokemons << TradePokemon.new(pokemon: pokemon, side: side)
  end

  def left_side_pokemons
    trade_pokemons.select(&:left?)
  end

  def right_side_pokemons
    trade_pokemons.select(&:right?)
  end

  private

  def minimum_one_pokemon_on_each_side?
    return unless left_side_pokemons.empty? || right_side_pokemons.empty?

    errors.add(:trade_pokemons, "needs at least one pokemon on each side")
  end
end

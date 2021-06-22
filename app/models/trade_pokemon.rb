class TradePokemon < ApplicationRecord
  belongs_to :pokemon
  belongs_to :trade

  validates :side, presence: true

  enum side: {
    left: 0,
    right: 1
  }

  def score
    pokemon.base_experience
  end

  def name
    pokemon.name
  end
end

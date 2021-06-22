class IndexController < ApplicationController

  def index
    @pokemons = get_pokemons.get_pokemons
  end

  private

  def get_pokemons
    @get_pokemons ||= PokemonsService.new
  end
end


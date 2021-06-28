class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def show; end

  def new; end

  def create
    pokemon = Pokemons.fetch_pokemon(pokemon_params[:name])
    # Pokemons.save_pokemon(pokemon)
    redirect_to new_pokemon_path, notice: "Pokemon created successfully"
  rescue Pokemons::PokemonNotFound, Pokemons::PokemonAlreadyExistError => exception
    redirect_to new_pokemon_path, flash: { error: exception.message }
  end

  private
  def pokemon_params
    params.permit(:name)
  end

  def pokemon_search_params
    params[:query]
  end
end

class PokemonsService

  class PokemonAlreadyExistError < StandardError
  end
 
  class PokemonNotFound < StandardError
  end
  
  attr_reader :name
  
  def initialize(name:)
    @name = name
  end
  
  def self.fetch_pokemon name
    pokemon = PokeApi.get(:pokemon)
    # raise PokemonNotFound, "Empty pokemon name. Insert a name!" unless pokemon.name.present?
    
    # build_pokemon(pokemon)
  rescue JSON::ParserError => exception
    raise PokemonNotFound, "What you're try to add ('#{name}') is not a pokemon! =(" if exception.message.scan(/not found/i)

    raise exception
  end
  
  def self.save_pokemon pokemon
    pokemon.save!
  rescue ActiveRecord::RecordInvalid => exception
    if exception.message.scan(/has already been taken/i)
      raise PokemonsService::PokemonAlreadyExistError, "#{pokemon.name} already exist"
    end

    raise exception
  end

  private

  def self.build_pokemon pokemon
    Pokemon.new(
      name: pokemon.name,
      base_experience: pokemon.base_experience
    )
  end
end
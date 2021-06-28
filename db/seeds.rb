# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
pokemons = PokeApi.get(pokemon: {limit: 151})

pokemons.results.each{ |pokemon|
  poke = PokeApi.get(pokemon: pokemon.name)
  Pokemon.create(
    name: poke.name,
    base_experience: poke.base_experience,
    img: poke.sprites.front_default
  )
}
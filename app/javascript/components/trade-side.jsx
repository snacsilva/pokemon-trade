import React from "react";

import TradeInput from "./trade-input";

export default function TradeSide({ pokemons, addPokemon, side }) {
  function addPokemonToSide(pokemon, index) {
    const newPokemons = _.clone(pokemons);
    newPokemons[index] = pokemon;
    addPokemon(newPokemons);
  }

  return pokemons.map((_pokemon, index) => {
    return (
      <TradeInput
        key={`${side}-${index}`}
        inputId={`${side}-${index}`}
        addPokemon={(pokemon) => addPokemonToSide(pokemon, index)}
      />
    );
  });
}
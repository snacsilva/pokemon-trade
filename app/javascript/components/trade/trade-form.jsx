import React, { useState } from "react";
import _ from "lodash";

import TradeSide from "./trade-side";
import TradeFairness from "./trade-fairness-alert";
import { useFairness } from "../../packs/functions/pokemons";
import { postTrade } from "../../packs/functions/api";

function pokemons(side) {
  return side
    .filter((pokemon) => !!pokemon?.name)
    .map((pokemon) => pokemon.name);
}

function initialPokemonSlots() {
  return _.clone(_.times(6, () => ({ name: "" })));
}

export default function TradeForm() {
  const [leftSide, setLeftSide] = useState(initialPokemonSlots());
  const [rightSide, setRightSide] = useState(initialPokemonSlots());

  const leftPokemons = pokemons(leftSide);
  const rightPokemons = pokemons(rightSide);

  const [fair, setFair] = useFairness(leftPokemons, rightPokemons);

  async function submitForm() {
    try {
      await postTrade(leftPokemons, rightPokemons);
      alert("trade registered successfully");
    } catch (error) {
      alert("Error when registering trade");
    }
  }

  return (
    <>
      <div className="row mb-2">
        <div className="col">
          <TradeFairness fair={fair} />
        </div>
      </div>
      <div className="row">
        <div className="col">
          <label htmlFor="left" className="form-label">
            <strong>Left side</strong>
          </label>
          <TradeSide
            pokemons={leftSide}
            addPokemon={setLeftSide}
            side="left"
          />
        </div>
        <div className="col">
          <label htmlFor="right" className="form-label">
            <strong>Right side</strong>
          </label>
          <TradeSide
            pokemons={rightSide}
            addPokemon={setRightSide}
            side="right"
          />
        </div>
      </div>

      <button className="btn btn-primary" onClick={submitForm}>
        Submit trade!
      </button>
    </>
  );
}

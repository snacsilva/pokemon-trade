import React from "react";
import ReactDOM from "react-dom";
import TradeForm from "../components/trade-form";

function PokemonTraderAPP() {
  return (
    <div className="container">
      <h1 className="display-2 mb-2">Traders</h1>

      <div className="card  mb-2">
        <div className="card-body bg-light">
          If you miss a pokemon from the list, you can add it on "Pokemons"
          menu.
        </div>
      </div>

      <TradeForm />
    </div>
  );
}

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(
    <PokemonTraderAPP />,
    document.querySelector("#pokemon-trader-app")
  );
});

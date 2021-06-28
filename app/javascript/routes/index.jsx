import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Home from "../components/Home";
import Pokemon from "../components/pokemon/index";
import Trade from "../components/trade/Trade";

export default (
  <Router>
    <Switch>
      <Route path="/" exact component={Home} />
      <Route path="/pokemons" exact component={Pokemon} />
      <Route path="/trades" exact component={Trade} />
    </Switch>
  </Router>
);
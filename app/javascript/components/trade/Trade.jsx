import React from "react";
import ReactDOM from "react-dom";
import TradeForm from "./trade-form";

export default function Trade() {
  return (
    <div className="container">
      <h3 className="display-2 mb-2">Traders</h3>
      <TradeForm />
    </div>
  );
}
import React from "react";

function fairTrade() {
  return (
    <div className="alert alert-success" role="alert">
      This Trade is fair!
    </div>
  );
}

function unfairTrade() {
  return (
    <div className="alert alert-warning" role="alert">
      This Trade is unfair!
    </div>
  );
}

export default function tradeFairness({ fair }) {
  if (typeof fair === "undefined") {
    return null;
  } else if (fair) {
    return fairTrade();
  } else {
    return unfairTrade();
  }
}
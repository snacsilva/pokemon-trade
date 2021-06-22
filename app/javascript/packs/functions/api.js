export async function searchPokemons(query) {
  const params = new URLSearchParams({ query });
  const response = await fetch(`/pokemons?${params.toString()}`);
  return response.json();
}

function post(url, body) {
  return fetch(url, {
    method: "POST",
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    body: JSON.stringify(body),
  });
}

export async function postTrade(leftPokemons, rightPokemons) {
  await post("/trades", {
    left: leftPokemons,
    right: rightPokemons,
  });
}

export async function postFairness(leftPokemons, rightPokemons) {
  const response = await post("/trades/simulate", {
    left: leftPokemons,
    right: rightPokemons,
  });

  return response.json();
}
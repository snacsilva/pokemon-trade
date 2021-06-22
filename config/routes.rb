Rails.application.routes.draw do
  root "trades#new"

  resources "trades", only: [:index, :new, :create]
  post "trades/simulate" => "trades#simulate"

  resources "pokemons", only: [:index, :new, :create]
end

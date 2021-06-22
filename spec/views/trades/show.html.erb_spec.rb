require 'rails_helper'

RSpec.describe "trades/show", type: :view do
  before(:each) do
    @trade = assign(:trade, Trade.create!(
      pokemons: "Pokemons",
      is_fair: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Pokemons/)
    expect(rendered).to match(/false/)
  end
end

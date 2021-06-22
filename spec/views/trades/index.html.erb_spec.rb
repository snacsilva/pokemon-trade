require 'rails_helper'

RSpec.describe "trades/index", type: :view do
  before(:each) do
    assign(:trades, [
      Trade.create!(
        pokemons: "Pokemons",
        is_fair: false
      ),
      Trade.create!(
        pokemons: "Pokemons",
        is_fair: false
      )
    ])
  end

  it "renders a list of trades" do
    render
    assert_select "tr>td", text: "Pokemons".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end

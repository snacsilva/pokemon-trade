require 'rails_helper'

RSpec.describe "trades/edit", type: :view do
  before(:each) do
    @trade = assign(:trade, Trade.create!(
      pokemons: "MyString",
      is_fair: false
    ))
  end

  it "renders the edit trade form" do
    render

    assert_select "form[action=?][method=?]", trade_path(@trade), "post" do

      assert_select "input[name=?]", "trade[pokemons]"

      assert_select "input[name=?]", "trade[is_fair]"
    end
  end
end

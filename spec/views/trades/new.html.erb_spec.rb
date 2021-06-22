require 'rails_helper'

RSpec.describe "trades/new", type: :view do
  before(:each) do
    assign(:trade, Trade.new(
      pokemons: "MyString",
      is_fair: false
    ))
  end

  it "renders new trade form" do
    render

    assert_select "form[action=?][method=?]", trades_path, "post" do

      assert_select "input[name=?]", "trade[pokemons]"

      assert_select "input[name=?]", "trade[is_fair]"
    end
  end
end

require 'rails_helper'

RSpec.describe "pokemons/index", type: :view do
  before(:each) do
    assign(:pokemons, [
      Pokemon.create!(
        name: "Name",
        base_experience: 2
      ),
      Pokemon.create!(
        name: "Name",
        base_experience: 2
      )
    ])
  end

  it "renders a list of pokemons" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end

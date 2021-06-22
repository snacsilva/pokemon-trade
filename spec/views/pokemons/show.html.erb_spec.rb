require 'rails_helper'

RSpec.describe "pokemons/show", type: :view do
  before(:each) do
    @pokemon = assign(:pokemon, Pokemon.create!(
      name: "Name",
      base_experience: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end

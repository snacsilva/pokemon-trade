require 'rails_helper'

RSpec.describe Pokemon, type: :model do
  it "validates the name presence" do
    pokemon = build(:pokemon, name: "")
    expect(pokemon).to be_invalid
  end
end

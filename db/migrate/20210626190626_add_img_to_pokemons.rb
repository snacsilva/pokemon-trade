class AddImgToPokemons < ActiveRecord::Migration[6.1]
  def change
    add_column :pokemons, :img, :string
  end
end

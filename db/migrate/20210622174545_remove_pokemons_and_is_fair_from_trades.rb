class RemovePokemonsAndIsFairFromTrades < ActiveRecord::Migration[6.1]
  def change
    remove_column :trades, :pokemons, :string
    remove_column :trades, :is_fair, :boolean
  end
end

class CreateTrades < ActiveRecord::Migration[6.1]
  def change
    create_table :trades do |t|
      t.string :pokemons
      t.boolean :is_fair

      t.timestamps
    end
  end
end

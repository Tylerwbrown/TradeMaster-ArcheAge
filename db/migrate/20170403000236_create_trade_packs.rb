class CreateTradePacks < ActiveRecord::Migration[5.0]
  def change
    create_table :trade_packs do |t|
      t.string :name
      t.integer :duration
      t.integer :labor_cost
      t.integer :component_cost

      t.timestamps
    end
  end
end

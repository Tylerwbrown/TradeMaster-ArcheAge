class AddCreationCostToTradePack < ActiveRecord::Migration[5.0]
  def change
    add_column :trade_packs, :creation_cost, :integer
  end
end

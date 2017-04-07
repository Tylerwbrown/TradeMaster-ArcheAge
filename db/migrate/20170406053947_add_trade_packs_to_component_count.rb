class AddTradePacksToComponentCount < ActiveRecord::Migration[5.0]
  def change
    add_column :component_counts, :trade_pack, :reference
  end
end

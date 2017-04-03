class AddNameToTradePackComponents < ActiveRecord::Migration[5.0]
  def change
    add_column :trade_pack_components, :name, :string
  end
end

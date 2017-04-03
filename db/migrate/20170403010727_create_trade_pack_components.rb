class CreateTradePackComponents < ActiveRecord::Migration[5.0]
  def change
    create_table :trade_pack_components do |t|

      t.timestamps
    end
  end
end

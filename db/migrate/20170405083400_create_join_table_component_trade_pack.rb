class CreateJoinTableComponentTradePack < ActiveRecord::Migration[5.0]
  def change
    create_join_table :components, :trade_packs do |t|
      t.index [:component_id, :trade_pack_id]
    end
  end
end

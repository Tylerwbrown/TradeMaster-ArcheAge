class RemoveDurationFromTradePack < ActiveRecord::Migration[5.0]
  def change
    remove_column :trade_packs, :duration, :integer
  end
end

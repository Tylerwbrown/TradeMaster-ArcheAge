class AddDurationToTradeRoutes < ActiveRecord::Migration[5.0]
  def change
    add_column :trade_routes, :duration, :integer
  end
end

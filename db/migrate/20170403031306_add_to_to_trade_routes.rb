class AddToToTradeRoutes < ActiveRecord::Migration[5.0]
  def change
    add_column :trade_routes, :to, :string
  end
end

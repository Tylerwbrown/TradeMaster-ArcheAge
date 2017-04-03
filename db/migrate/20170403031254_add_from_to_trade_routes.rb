class AddFromToTradeRoutes < ActiveRecord::Migration[5.0]
  def change
    add_column :trade_routes, :from, :string
  end
end

class CreateTradeRuns < ActiveRecord::Migration[5.0]
  def change
    create_table :trade_runs do |t|
      t.string :name

      t.timestamps
    end
  end
end

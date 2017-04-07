class CreateComponentCounts < ActiveRecord::Migration[5.0]
  def change
    create_table :component_counts do |t|
      t.integer :count
      t.timestamps
    end
  end
end

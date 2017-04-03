class TradePack < ApplicationRecord
  attr_accessor :name, :labor_cost, :component_cost, :creation_cost
  validates :name, presence: true
  validates :name, length: { in: 3..20 }
end

class TradePack < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { in: 3..20 }

  has_and_belongs_to_many :components

  #TODO:// Move view related methods to decorators

  def component_cost
    gold = components.sum { |c| c.cost_formatted[:gold] }
    silver = components.sum { |c| c.cost_formatted[:silver] }
    copper = components.sum { |c| c.cost_formatted[:copper] }
    { gold: gold, silver: silver, copper: copper }
  end

end

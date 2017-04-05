class Component < ApplicationRecord
  has_and_belongs_to_many :trade_packs

  def cost_formatted
    c = cost
    gold = c/10000
    c -= gold * 10000
    silver = c/100
    c -= silver * 100
    copper = c
    { gold: gold, silver: silver, copper: copper }
  end
end

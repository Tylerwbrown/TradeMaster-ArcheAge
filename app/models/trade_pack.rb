class TradePack < ApplicationRecord
  enum region: Region.list
  validates :name, presence: true
  validates :name, length: { in: 3..20 }

  has_and_belongs_to_many :components
  has_and_belongs_to_many :trade_runs
  has_many :component_counts
end

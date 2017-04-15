class TradeRoute < ApplicationRecord
  has_and_belongs_to_many :trade_runs
end

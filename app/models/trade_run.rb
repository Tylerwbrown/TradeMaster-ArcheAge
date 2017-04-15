class TradeRun < ApplicationRecord
  has_and_belongs_to_many :trade_packs
  has_and_belongs_to_many :trade_routes
end

class Component < ApplicationRecord
  has_and_belongs_to_many :trade_packs
end

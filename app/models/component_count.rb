class ComponentCount < ApplicationRecord
  #TODO://Remove this, and add this on the join table between component and trade_pack
  belongs_to :trade_pack
end

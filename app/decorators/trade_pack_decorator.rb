class TradePackDecorator < Draper::Decorator
  delegate_all

  def region
    read_attribute(:region).to_s.titleize
  end

  def cost
    h.format_cost(components.sum(&:cost))
  end

end

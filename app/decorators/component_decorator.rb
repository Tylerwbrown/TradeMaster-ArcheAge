class TradePackDecorator < Draper::Decorator
  delegate_all

  def cost
    h.format_cost(super)
  end
end

class ComponentDecorator < Draper::Decorator
  delegate_all

  def cost
    h.format_cost(read_attribute(:cost))
  end
end

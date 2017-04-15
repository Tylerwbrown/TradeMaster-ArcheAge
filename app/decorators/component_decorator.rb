class ComponentDecorator < Draper::Decorator
  delegate_all

  def cost
    read_attribute(:cost).present? ? read_attribute(:cost) : 0
  end
end

class TradePackDecorator < Draper::Decorator
  delegate_all

  def region
    read_attribute(:region).to_s.titleize
  end

  def cost
    components_total.sum { |c| c[:cost] }
  end

  def components_total
    items = components.map.with_index do |component, index|
      count = component_counts[index].count.to_i
      cost = component.cost.to_i * count
      { component: component, cost: cost, count: count }
    end
    items
  end


end

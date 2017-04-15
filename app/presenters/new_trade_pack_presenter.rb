class NewTradePackPresenter < Struct.new(:trade_pack, :component_count, :continent)
  def regions
    Region.list_for_form(continent)
  end

  def components
    Component.all.map { |c| [c.name, c.id] }
  end
end

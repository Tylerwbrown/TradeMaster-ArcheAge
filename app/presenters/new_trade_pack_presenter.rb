class NewTradePackPresenter < Struct.new(:trade_pack, :component_count, :continent)
  def component_classes
    component_count > 2 ? "col-md-6 col-lg-4" : "col-sm-12"
  end

  def regions
    Region.list_for_form(continent)
  end

  def components
    Component.all.map { |c| [c.name, c.id] }
  end
end

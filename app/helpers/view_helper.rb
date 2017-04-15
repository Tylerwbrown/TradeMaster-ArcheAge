module ViewHelper
  def nav_class(href)
     active_status = current_page?(href) ? ' active' : ''
     "nav-item nav-link #{active_status}"
  end

  def format_cost(copper_total)
    c = copper_total
    gold = c/10000
    c -= gold * 10000
    silver = c/100
    c -= silver * 100
    copper = c
    { gold: gold, silver: silver, copper: copper }
  end

  def format_cost_default
    { gold: nil, silver: nil, copper: nil }
  end

  def cost_in_gold(copper_total)
    copper_total/10000.0
  end

  def cost_in_silver
    copper_total * 100.0
  end

  def cost_in_copper
    copper_total
  end

  def cost_badges(copper_total, display: :all)
    cost = case display
      when :all
        format_cost(copper_total)
      when :dynamic
        format_cost(copper_total).reject { |k,v| v == 0 }
      else
        { display => self.send("cost_in_#{display}", copper_total).round(2) }
    end
    cost.map { |k,v| badge(k, v.to_s + " " + k.to_s.titleize) + " " }.join.html_safe
  end
end

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
end

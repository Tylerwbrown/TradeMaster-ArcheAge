module BadgeHelper
  def labor_badge(text)
    badge(text, content_tag(:span, 'Labor', class: 'badge badge-info'))
  end

  def continent_badge(text, continent)
    badge(text, content_tag(:span, continent, class: 'badge badge-warning'))
  end

  private
  def badge(text, badge)
    (text + " " + badge.html_safe).html_safe
  end
end

module BootstrapHelper
  def badge(type, text)
    content_tag(:span, text, class: "badge badge-#{type.to_s}").html_safe
  end
end

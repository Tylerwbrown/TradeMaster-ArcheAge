#TODO Move to Presenter when making presenters
module ViewHelper
  def nav_class(href)
     active_status = current_page?(href) ? ' active' : ''
     "nav-item nav-link #{active_status}"
  end
end

class ApplicationController < ActionController::Base
  before_action :set_prefix
  #protect_from_forgery with: :exception

  private

  def set_prefix
    append_view_path "app/views/#{controller_name}/#{action_name}"
  end
end

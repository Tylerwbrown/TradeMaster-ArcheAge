class FullProcessController < ApplicationController

  def new
    redirect_to new_component_path if params[:full_process][:items_count].to_i > 0
  end

end

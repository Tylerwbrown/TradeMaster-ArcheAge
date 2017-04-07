class ComponentsController < ApplicationController
  before_action :set_component, only: [:show, :edit, :update, :destroy]

  def index
    @components = Component.all.decorate
  end

  def new
    @component = Component.new
    @items_count = params[:full_process][:items_count].to_i - 1 if params[:full_process]
  end

  def create
    @component = Component.new(component_params)

    if @component.save
      flash[:success] = "You created #{@component.name}"
    else
      flash[:danger] = "Creation failed."
    end
    redirect_to root_url
  end

  def update
    if @component.update(component_params)
      flash[:success] = "You successfully updated #{@component.name}"
      redirect_to components_path
    else
      render :edit
    end
  end

  def destroy
    @component.destroy
    redirect_to root_url
  end

  private
    def set_component
      @component = Component.find(params[:id])
    end

    def set_cost
      if cost = params[:cost]
        gold = cost[:gold].to_i * 10000 if cost[:gold]
        silver = cost[:silver].to_i * 100 if cost[:silver]
        copper = cost[:copper].to_i if cost[:copper]
        gold + silver + copper
      end
    end

    def component_params
      params[:component][:cost] = set_cost
      params[:component].permit(:name, :cost)
    end
end

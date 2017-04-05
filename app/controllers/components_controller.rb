class ComponentsController < ApplicationController
  before_action :set_component, only: [:show, :edit, :update, :destroy]

  def index
    @components = Component.all
  end

  def show
    respond_to do |format|
      format.js { render layout: false }
    end
  end

  def new
    @component = Component.new
    @items_count = params[:full_process][:items_count].to_i - 1 if params[:full_process]
  end

  def create
    puts
    cost = (params[:cost][:gold].to_i * 10000) + (params[:cost][:silver].to_i * 100) + params[:cost][:copper].to_i
    @component = Component.new(name: params[:component][:name], cost: cost)
    redirect_to root_url, notice: 'Component was successfully created.' if @component.save
  end

  def update
    respond_to do |format|
      if @component.update(component_params)
        format.html { redirect_to @component, notice: 'Component was successfully updated.' }
        format.json { render :show, status: :ok, location: @component }
      else
        format.html { render :edit }
        format.json { render json: @component.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @component.destroy
    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end

  private
    def set_component
      @component = Component.find(params[:id])
    end
end

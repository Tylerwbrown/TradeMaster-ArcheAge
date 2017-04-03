class TradePackComponentsController < ApplicationController
  before_action :set_trade_pack_component, only: [:show, :edit, :update, :destroy]

  # GET /trade_pack_components
  # GET /trade_pack_components.json
  def index
    @trade_pack_components = TradePackComponent.all
  end

  # GET /trade_pack_components/1
  # GET /trade_pack_components/1.json
  def show
  end

  # GET /trade_pack_components/new
  def new
    @trade_pack_component = TradePackComponent.new
  end

  # GET /trade_pack_components/1/edit
  def edit
  end

  # POST /trade_pack_components
  # POST /trade_pack_components.json
  def create
    @trade_pack_component = TradePackComponent.new(trade_pack_component_params)

    respond_to do |format|
      if @trade_pack_component.save
        format.html { redirect_to @trade_pack_component, notice: 'Trade pack component was successfully created.' }
        format.json { render :show, status: :created, location: @trade_pack_component }
      else
        format.html { render :new }
        format.json { render json: @trade_pack_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trade_pack_components/1
  # PATCH/PUT /trade_pack_components/1.json
  def update
    respond_to do |format|
      if @trade_pack_component.update(trade_pack_component_params)
        format.html { redirect_to @trade_pack_component, notice: 'Trade pack component was successfully updated.' }
        format.json { render :show, status: :ok, location: @trade_pack_component }
      else
        format.html { render :edit }
        format.json { render json: @trade_pack_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trade_pack_components/1
  # DELETE /trade_pack_components/1.json
  def destroy
    @trade_pack_component.destroy
    respond_to do |format|
      format.html { redirect_to trade_pack_components_url, notice: 'Trade pack component was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trade_pack_component
      @trade_pack_component = TradePackComponent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trade_pack_component_params
      params.fetch(:trade_pack_component, {})
    end
end

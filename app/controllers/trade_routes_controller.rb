class TradeRoutesController < ApplicationController
  before_action :set_trade_route, only: [:show, :edit, :update, :destroy]

  # GET /trade_routes
  # GET /trade_routes.json
  def index
    @trade_routes = TradeRoute.all
  end

  # GET /trade_routes/1
  # GET /trade_routes/1.json
  def show
  end

  # GET /trade_routes/new
  def new
    @trade_route = TradeRoute.new
  end

  # GET /trade_routes/1/edit
  def edit
  end

  # POST /trade_routes
  # POST /trade_routes.json
  def create
    @trade_route = TradeRoute.new(trade_route_params)

    respond_to do |format|
      if @trade_route.save
        format.html { redirect_to @trade_route, notice: 'Trade route was successfully created.' }
        format.json { render :show, status: :created, location: @trade_route }
      else
        format.html { render :new }
        format.json { render json: @trade_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trade_routes/1
  # PATCH/PUT /trade_routes/1.json
  def update
    respond_to do |format|
      if @trade_route.update(trade_route_params)
        format.html { redirect_to @trade_route, notice: 'Trade route was successfully updated.' }
        format.json { render :show, status: :ok, location: @trade_route }
      else
        format.html { render :edit }
        format.json { render json: @trade_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trade_routes/1
  # DELETE /trade_routes/1.json
  def destroy
    @trade_route.destroy
    respond_to do |format|
      format.html { redirect_to trade_routes_url, notice: 'Trade route was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trade_route
      @trade_route = TradeRoute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trade_route_params
      params.require(:trade_route).permit(:name)
    end
end

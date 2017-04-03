class TradePacksController < ApplicationController
  before_action :set_trade_pack, only: [:show, :edit, :update, :destroy]

  def index
    @trade_packs = TradePack.all
  end

  def show
  end

  def new
    @trade_pack = TradePack.new
  end

  def edit
  end

  def create
    @trade_pack = TradePack.new(trade_pack_params)

    respond_to do |format|
      if @trade_pack.save
        format.html { redirect_to @trade_pack, notice: 'Trade pack was successfully created.' }
        format.json { render :show, status: :created, location: @trade_pack }
      else
        format.html { render :new }
        format.json { render json: @trade_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @trade_pack.update(trade_pack_params)
        format.html { redirect_to @trade_pack, notice: 'Trade pack was successfully updated.' }
        format.json { render :show, status: :ok, location: @trade_pack }
      else
        format.html { render :edit }
        format.json { render json: @trade_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @trade_pack.destroy
    respond_to do |format|
      format.html { redirect_to trade_packs_url, notice: 'Trade pack was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_trade_pack
      @trade_pack = TradePack.find(params[:id])
    end

    def trade_pack_params
      params.require(:trade_pack).permit(:name, :duration, :labor_cost, :component_cost)
    end
end

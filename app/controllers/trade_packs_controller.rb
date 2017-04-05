class TradePacksController < ApplicationController
  before_action :set_trade_pack, only: [:show, :edit, :update, :destroy]

  def index
    @trade_packs = TradePack.all.decorate
  end

  def show
  end

  def new
    @trade_pack = TradePack.new

    @component_count = params[:info][:component_count].to_i
    @rows = @component_count > 3 ? 2 : 1
    @row_size = (@component_count/@rows).to_i

    @continent = params[:info][:continent]
    @regions = Region.list_for_form(@continent)
  end

  def create
    @trade_pack = TradePack.new(trade_pack_params)
    set_trade_pack_components if params[:trade_pack][:component_ids].present?

    return redirect_to @trade_pack, notice: 'Trade pack was successfully created.' if @trade_pack.save
    render :new
  end

  def update
    return redirect_to @trade_pack, notice: 'Trade pack was successfully updated.' if @trade_pack.update(trade_pack_params)
    render :edit
  end

  def destroy
    @trade_pack.destroy
    redirect_to trade_packs_url, notice: 'Trade pack was successfully destroyed.'
  end

  private
    def set_trade_pack_components
      if @trade_pack.present? && component_ids = params[:trade_pack][:component_ids].values
        components = component_ids.map { |id| Component.find(id) }
        @trade_pack.components += components
      end
    end

    def set_trade_pack
      @trade_pack = TradePack.find(params[:id]).decorate
    end

    def trade_pack_params
      params[:trade_pack][:region] = params[:trade_pack][:region].to_i
      params[:trade_pack].permit(:name, :labor_cost, :region)
    end

end

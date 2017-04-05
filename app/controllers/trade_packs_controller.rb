class TradePacksController < ApplicationController
  before_action :set_trade_pack, only: [:show, :edit, :update, :destroy]

  def index
    @trade_packs = TradePack.all
  end

  def show
  end

  def new
    puts params
    @trade_pack = TradePack.new
    @component_count = params[:components][:count].to_i
    @rows = @component_count > 3 ? 2 : 1
    @row_size = (@component_count/@rows).to_i
  end

  def create
    @trade_pack = TradePack.new(name: params[:trade_pack][:name], labor_cost: params[:trade_pack][:labor_cost])
    set_trade_pack_components

    @trade_pack.save!
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
        puts components.map(&:cost)
        @trade_pack.components += components
        puts @trade_pack.components.map(&:cost)

      end
    end

    def set_trade_pack
      @trade_pack = TradePack.find(params[:id])
    end
end

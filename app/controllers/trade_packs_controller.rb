class TradePacksController < ApplicationController
  before_action :set_trade_pack, only: [:show, :edit, :update, :destroy]

  def index
    @trade_packs = TradePack.all
  end

  def new
    @trade_pack = TradePack.new.decorate
    @presenter = ::NewTradePackPresenter.new(@trade_pack, params[:info][:component_count].to_i, params[:info][:continent])
  end

  def create
    @trade_pack = TradePack.new(trade_pack_params)
    @trade_pack.component_counts = params[:trade_pack][:component_counts].map { |c| ComponentCount.create(count: c) }

    if @trade_pack.save
      flash[:success] = "<h4 class='alert-heading'>Creation Successful!</h4>You created a Trade Pack!"
    else
      flash[:danger] = "<h4 class='alert-heading'>Creation Failed</h4>#{@trade_pack.errors.to_a}"
    end
    redirect_to trade_packs_path
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
    def fix_params #TODO:// Find something better
      params[:trade_pack][:component_ids] = params[:trade_pack][:component_ids].map(&:last).map(&:to_i) #TODO:// look into map! alternative
      params[:trade_pack][:component_counts] = params[:trade_pack][:component_counts].map(&:last).map(&:to_i) #TODO:// look into map! alternative
      params[:trade_pack][:region] = params[:trade_pack][:region].to_i
    end

    def set_trade_pack
      @trade_pack = TradePack.find(params[:id]).decorate
    end

    def trade_pack_params
      fix_params
      params.require(:trade_pack).permit(:name, :labor_cost, :region, :component_ids=>[])
    end

end

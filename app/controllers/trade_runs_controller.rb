class TradeRunsController < ApplicationController
  before_action :set_trade_run, only: [:show, :edit, :update, :destroy]

  # GET /trade_runs
  # GET /trade_runs.json
  def index
    @trade_runs = TradeRun.all
  end

  # GET /trade_runs/1
  # GET /trade_runs/1.json
  def show
  end

  # GET /trade_runs/new
  def new
    @trade_run = TradeRun.new
  end

  # GET /trade_runs/1/edit
  def edit
  end

  # POST /trade_runs
  # POST /trade_runs.json
  def create
    @trade_run = TradeRun.new(trade_run_params)

    respond_to do |format|
      if @trade_run.save
        format.html { redirect_to @trade_run, notice: 'Trade run was successfully created.' }
        format.json { render :show, status: :created, location: @trade_run }
      else
        format.html { render :new }
        format.json { render json: @trade_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trade_runs/1
  # PATCH/PUT /trade_runs/1.json
  def update
    respond_to do |format|
      if @trade_run.update(trade_run_params)
        format.html { redirect_to @trade_run, notice: 'Trade run was successfully updated.' }
        format.json { render :show, status: :ok, location: @trade_run }
      else
        format.html { render :edit }
        format.json { render json: @trade_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trade_runs/1
  # DELETE /trade_runs/1.json
  def destroy
    @trade_run.destroy
    respond_to do |format|
      format.html { redirect_to trade_runs_url, notice: 'Trade run was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trade_run
      @trade_run = TradeRun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trade_run_params
      params.require(:trade_run).permit(:name)
    end
end

class TradesController < ApplicationController
  def new; end

  def index
    @trades = Trade.history
  end

  def create
    trade = trade_simulate
    trade.save!
    render json: { fair: Trades.is_fair?(trade) }, status: :ok
  end

  def simulate
    trade = trade_simulate
    render json: { fair: Trades.is_fair?(trade) }
  end

  private

  def trade_simulate
    Trades.simulate(trade_params)
  end

  def trade_params
    params.permit(left: [], right: [])
  end
end

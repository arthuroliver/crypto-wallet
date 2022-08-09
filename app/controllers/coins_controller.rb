class CoinsController < ApplicationController
  before_action :set_coin, only: %i[ edit destroy update show ]
  before_action :set_mining_type_options, only: %i[ new edit update ]

  def index
    @coins = Coin.all
  end

  def new
    @coin = Coin.new
  end

  def create
    @coin = Coin.new(coin_params)

    if @coin.save
      redirect_to @coin
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @coin.update(coin_params)
      redirect_to @coin
    else
      render :edit
    end
  end

  def destroy
    @coin.destroy
    redirect_to :coins, notice: "Deleted with success!"
  end

  private
    def set_mining_type_options
      @mining_type_options = MiningType.all.pluck(:description, :id)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_coin
      @coin = Coin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coin_params
      params.require(:coin).permit(:description, :acronym, :url_image, :mining_type_id)
    end
end

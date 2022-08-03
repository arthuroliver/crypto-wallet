class CoinsController < ApplicationController
  def index
    @coins = Coin.all
  end

  def new
    @coin = Coin.new
  end

  def create
    @coin = Coin.new
  end
end

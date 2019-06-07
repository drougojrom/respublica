class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show; end

  def new; end

  private

  helper_method :shop

  def shop
    @shop = params[:id] ? Shop.find(params[:id]) : Shop.new
  end
end

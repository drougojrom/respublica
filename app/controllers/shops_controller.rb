class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show; end

  def new; end

  def create
    @shop = Shop.new(shop_params)
    redirect_to @shop, notice: 'Магазин успешно создан' if @shop.save
  end

  def destroy
    shop.destroy
    redirect_to shops_path, notice: "Магазин успешно удален"
  end

  private

  helper_method :shop

  def shop
    @shop = params[:id] ? Shop.find(params[:id]) : Shop.new
  end

  def shop_params
    params.require(:shop).permit(:title, :address, :metro_station, :city)
  end
end

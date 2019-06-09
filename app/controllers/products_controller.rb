class ProductsController < ApplicationController
  def edit
  end

  def create
  end

  def destroy
  end

  def search
    if params[:search_products].presence
      @products = Product.search(search_params)
    end
  end

  private

  helper_method :product

  def product
    @product = Product.new
  end

  def search_params
    params.require(:search_products).permit(:articul, :title, :price, :weight,
                                            :size, :color, :amount, shop_ids: []).delete_if { |k, v| v.empty? }
  end
end

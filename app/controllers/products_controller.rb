class ProductsController < ApplicationController
  def edit
  end

  def create
  end

  def destroy
  end

  def search
    if params[:search_products].presence
      @products ||= Product.search(search_params)
      @rows = search_params.to_h.map { |k, v| k }.map { |x| x == "shop_id" ? "shop title" : x }
      render xlsx: "search", template: "products/search.xlsx.axlsx", filename: "search.xlsx"
    end
  end

  private

  helper_method :product

  def product
    @product = Product.new
  end

  def search_params
    params.require(:search_products).permit(:articul, :title, :price, :weight,
                                            :size, :color, :amount, shop_id: []).delete_if { |k, v| v.empty? }
  end
end

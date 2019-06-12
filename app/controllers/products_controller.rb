class ProductsController < ApplicationController
  def new; end

  def show; end

  def create
    @product = shop.products.new(product_params)
    if @product.save
      redirect_to [shop, product], notice: "Вы успешно создали новый продукт"
    end
  end

  def filter
    if params[:search_products].presence
      @products ||= Product.search(filter_product_params)
      @rows = filter_report_attributes
      render xlsx: "search", template: "products/search.xlsx.axlsx", filename: "search.xlsx"
    end
  end

  private

  helper_method :product, :shop

  def shop
    @shop = Shop.find(params[:shop_id])
  end

  def product
    @product ||= params[:id] ? Product.find(params[:id]) : Product.new
  end

  def filter_params
    params.require(:search_products).permit(search_attributes: {}, report_attributes: {},
                                            shop_id: [])
  end

  def filter_product_params
    filter_params[:search_attributes].delete_if { |k, v| v.empty? }
  end

  def filter_report_attributes
    filter_params[:report_attributes].to_h.map { |k, v| k if v == "1" }.reject { |i| i.nil? }
  end

  def product_params
    params.require(:product).permit(:articul, :title, :weight,
                                    :size, :price, :amount, :color)
  end
end

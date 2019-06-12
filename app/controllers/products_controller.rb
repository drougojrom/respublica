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
      @products = FilterProducts.call(vendor_code: filter_product_params["vendor_code"],
                                      title: filter_product_params["title"],
                                      shop_id: filter_product_params["shop_id"],
                                      color: filter_product_params["color"],
                                      price: filter_product_params["price"],
                                      weight: filter_product_params["weight"],
                                      size: filter_product_params["size"],
                                      amount: filter_product_params["amount"])
      @rows = filter_report_attributes
      render xlsx: "search", template: "products/filter.xlsx.axlsx", filename: "filter.xlsx"
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
    filter_params[:search_attributes].delete_if { |_, v| v.empty? }
  end

  def filter_report_attributes
    filter_params[:report_attributes].to_h.map { |k, v| k if v == "1" }.reject(&:nil?)
  end

  def product_params
    params.require(:product).permit(:vendor_code, :title, :weight,
                                    :size, :price, :amount, :color)
  end
end

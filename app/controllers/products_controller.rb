class ProductsController < ApplicationController
  def edit
  end

  def create
  end

  def destroy
  end

  def search
    if params[:search_products].presence
      @products ||= Product.search(product_params)
      @rows = report_attributes
      render xlsx: "search", template: "products/search.xlsx.axlsx", filename: "search.xlsx"
    end
  end

  private

  helper_method :product

  def product
    @product = Product.new
  end

  def search_params
    params.require(:search_products).permit(search_attributes: {}, report_attributes: {},
                                            shop_id: [])
  end

  def product_params
    search_params[:search_attributes].delete_if { |k, v| v.empty? }
  end

  def report_attributes
    search_params[:report_attributes].to_h.map { |k, v| k if v == "1" }.reject { |i| i.nil? }
  end
end

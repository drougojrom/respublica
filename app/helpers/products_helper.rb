module ProductsHelper
  def shops
    @shops ||= Shop.all.map do |shop|
      [shop.title, shop.id]
    end
  end
end

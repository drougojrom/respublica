class FilterProducts
  def self.call(articul:, title:, shop_id:, color:, price:, weight:, size:, amount:)
    result = Product.all
    result = result.by_articul(articul) if articul
    result = result.by_title(title) if title
    result = result.by_shop(shop_id) if shop_id
    result = result.by_color(color) if color
    result = result.by_price(price) if price
    result = result.by_weight(weight) if weight
    result = result.by_size(size) if size
    result = result.by_amount(amount) if amount
    result
  end
end
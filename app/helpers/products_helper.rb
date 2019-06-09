module ProductsHelper
  def shops
    @shops ||= Shop.all.map do |shop|
      [shop.title, shop.id]
    end
  end

  def export_params
    @export_params = [["Артикул", :articul],
                      ["Название", :title],
                      ["Вес", :weight],
                      ["Размер", :size],
                      ["Цвет", :color],
                      ["Цена", :price],
                      ["Остаток в магазине", :amount],
                      ["Название магазина", :shop_id]]
  end
end

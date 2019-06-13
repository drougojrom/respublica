class RemoveShopReferenceFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_reference :products, :shop, index:true, foreign_key: true
  end
end

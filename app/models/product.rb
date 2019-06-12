class Product < ApplicationRecord
  has_one :product_availability
  has_one :shop, through: :product_availability, dependent: :destroy

  validates :title, :vendor_code, :amount, :color, :price, presence: true

  scope :by_vendor_code, -> (vendor_code) { where(vendor_code: vendor_code) }
  scope :by_title, -> (title) { where(title: title) }
  scope :by_shop, -> (shop_id) { joins(:shop).where(id: shop_id) }
  scope :by_color, -> (color) { where(color: color) }
  scope :by_price, -> (price) { where(price: price) }
  scope :by_weight, -> (weight) { where(weight: weight) }
  scope :by_size, -> (size) { where(size: size) }
  scope :by_amount, -> (amount) { where(amount: amount) }
end

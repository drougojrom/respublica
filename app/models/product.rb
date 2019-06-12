class Product < ApplicationRecord
  has_one :product_availability
  has_one :shop, through: :product_availability

  validates :title, :articul, :amount, :color,
            :price, :size, :weight, presence: true

  scope :filter, -> (params) { where(params) }
end

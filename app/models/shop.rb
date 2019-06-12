class Shop < ApplicationRecord
  validates :title, :address, :city, presence: true

  has_many :product_availabilities
  has_many :products, through: :product_availabilities
end

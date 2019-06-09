class Shop < ApplicationRecord
  validates :title, :address, :city, presence: true

  has_many :products
end

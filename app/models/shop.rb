class Shop < ApplicationRecord
  validates :title, :address, :city, presence: true
end

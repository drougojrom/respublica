class Product < ApplicationRecord
  belongs_to :shop

  validates :title, :articul, :amount, :color,
            :price, :size, :weight, presence: true

  scope :search, -> (params) { where(params) }
end

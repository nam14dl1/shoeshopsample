class ProductDetail < ApplicationRecord
  belongs_to :products
  belongs_to :colors
  belongs_to :size
end

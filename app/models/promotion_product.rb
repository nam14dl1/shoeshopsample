class PromotionProduct < ApplicationRecord
  belongs_to :promotions
  belongs_to :products
end

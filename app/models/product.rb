class Product < ApplicationRecord
  belongs_to :categories
  belongs_to :brands
  belongs_to :images
end

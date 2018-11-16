class Size < ApplicationRecord

  has_many :brands, through: :brand_sizes
  has_many :brand_sizes
end

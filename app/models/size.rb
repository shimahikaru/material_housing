class Size < ApplicationRecord

  has_many :brand_sizes, dependent: :destroy
  has_many :brands, through: :brand_sizes

end

class Depthsize < ApplicationRecord

  has_many :brand_depthsizes
  has_many :brands, through: :brand_depthsizes

end

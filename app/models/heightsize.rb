class Heightsize < ApplicationRecord

  has_many :brand_heightsizes
  has_many :brands, through: :brand_heightsizes

end

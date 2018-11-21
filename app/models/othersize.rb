class Othersize < ApplicationRecord

  has_many :brand_othersizes
  has_many :brands, through: :brand_othersizes

end

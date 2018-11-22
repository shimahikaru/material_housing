class Keyword < ApplicationRecord
  has_many :brand_keywords
  has_many :brands, through: :brand_keywords
end

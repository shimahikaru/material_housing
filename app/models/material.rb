class Material < ApplicationRecord

  has_many :brand_materials
  has_many :brands, through: :brand_materials

end

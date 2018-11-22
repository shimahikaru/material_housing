class BrandOthersize < ApplicationRecord
  belongs_to :brand
  belongs_to :othersize

  def self.searchothersizes(otheres)
    self.where(othersize_id: otheres).select(:brand_id)
  end

end

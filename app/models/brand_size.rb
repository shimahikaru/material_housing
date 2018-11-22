class BrandSize < ApplicationRecord
  belongs_to :size
  belongs_to :brand

  def self.searchsizes(widthes)
    self.where(size_id: widthes).select(:brand_id)
  end

end

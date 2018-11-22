class BrandDepthsize < ApplicationRecord
  belongs_to :brand
  belongs_to :depthsize

  def self.searchdepthsizes(depthes)
    self.where(depthsize_id: depthes).select(:brand_id)
  end

end

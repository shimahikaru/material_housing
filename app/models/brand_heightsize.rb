class BrandHeightsize < ApplicationRecord
  belongs_to :heightsize
  belongs_to :brand

  def self.searchheightsizes(heightes)
    self.where(heightsize_id: heightes).select(:brand_id)
  end
end

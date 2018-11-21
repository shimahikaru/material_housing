class BrandKeyword < ApplicationRecord
  belongs_to :brand
  belongs_to :keyword

  def self.searchkeywords(words)
    self.where(keyword_id: words).select(:brand_id)
  end

end

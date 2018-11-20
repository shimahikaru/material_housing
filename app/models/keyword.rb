class Keyword < ApplicationRecord
  has_many :brand_keywords
  has_many :brands, through: :brand_keywords

  def self.searchkeywords(words)
    self.where(keyword_id: words).select(:brand_id)
  end
end

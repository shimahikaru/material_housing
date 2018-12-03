class Brand < ApplicationRecord
  is_impressionable counter_cache: true

  belongs_to :company

  has_many :brandimages, inverse_of: :brand, dependent: :delete_all
  accepts_nested_attributes_for :brandimages, reject_if: :all_blank, allow_destroy: true

  has_many :details, inverse_of: :brand, dependent: :delete_all
  accepts_nested_attributes_for :details, reject_if: :all_blank, allow_destroy: true

  has_many :prices, inverse_of: :brand, dependent: :delete_all
  accepts_nested_attributes_for :prices, reject_if: :all_blank, allow_destroy: true


  has_many :comments, ->{ order("updated_at DESC")}, dependent: :delete_all

  has_many :tags, inverse_of: :brand, dependent: :delete_all
  accepts_nested_attributes_for :tags, reject_if: :all_blank, allow_destroy: true

  has_many :brand_sizes
  has_many :sizes, through: :brand_sizes
  accepts_nested_attributes_for :brand_sizes, reject_if: :all_blank, allow_destroy: true

  has_many :brand_heightsizes
  has_many :heightsizes, through: :brand_heightsizes
  accepts_nested_attributes_for :brand_heightsizes, reject_if: :all_blank, allow_destroy: true

  has_many :brand_depthsizes
  has_many :depthsizes, through: :brand_depthsizes
  accepts_nested_attributes_for :brand_depthsizes, reject_if: :all_blank, allow_destroy: true

  has_many :brand_keywords
  has_many :keywords, through: :brand_keywords
  accepts_nested_attributes_for :brand_keywords, reject_if: :all_blank, allow_destroy: true

  has_many :brand_othersizes
  has_many :othersizes, through: :brand_othersizes
  accepts_nested_attributes_for :brand_othersizes, reject_if: :all_blank, allow_destroy: true

  has_many :brand_matelials
  has_many :materials, through: :brand_materials
  # accepts_nested_attributes_for :brand_materials, reject_if: :all_blank, allow_destroy: true

  def self.count_order(count)
    if count == "2"
      self.reorder('completion DESC')
    elsif count == "1"
    self.reorder('impressions_count DESC')
    end
  end

  def self.search_keyword(words)
      keyword = BrandKeyword.searchkeywords(words)
      self.where(id: keyword)
  end

  def self.search_size(widthes)
      width = BrandSize.searchsizes(widthes)
      self.where(id: width)
  end

  def self.search_heightsize(heightes)
      height = BrandHeightsize.searchheightsizes(heightes)
      self.where(id: height)
  end

  def self.search_depthsize(depthes)
      depth = BrandDepthsize.searchdepthsizes(depthes)
      self.where(id: depth)
  end

  def self.search_othersize(otheres)
      other = BrandOthersize.searchothersizes(otheres)
      self.where(id: other)
  end

  enum location: {
    "キッチン":1, 食洗機:2, ラバトリー:3, バス:4, トイレ:5, 玄関収納:6, リビング収納:7, フローリング:8, タタミ:9, カーペット:10, クッションフロア:11, 玄関床:12, クロス:13, "壁(タイル)":14, ペット向け:15, 扉:16, 照明:17, カーテン:18
  }

  enum grade: {
   ベーシック:1, スタンダード:2, ハイグレード:3
  }




end

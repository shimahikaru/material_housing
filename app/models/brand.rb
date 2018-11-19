class Brand < ApplicationRecord
  belongs_to :company

  has_many :brandimages, inverse_of: :brand, dependent: :delete_all
  accepts_nested_attributes_for :brandimages, reject_if: :all_blank, allow_destroy: true

  has_many :details, inverse_of: :brand, dependent: :delete_all
  accepts_nested_attributes_for :details, reject_if: :all_blank, allow_destroy: true

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

  enum location: {
    "キッチン":1, ラバトリー:2, バス:3, トイレ:4, 玄関収納:5, リビング収納:6, キッチン収納:7, "収納(その他)":8, フローリング:9, タタミ:10, カーペット:11, クッションフロア:12, 玄関床:13, "床(その他)":14, クロス:15, 塗り壁:16, "壁(自然素材)":17, "壁(その他)":18, ペット向け:19, タイル:20, 扉:21, 照明:22, カーテン:23, "水回りアクセサリー":24
  }

  enum grade: {
   お手頃:1, ベーシック:2, やや高め:3, ハイグレード:4
  }

end

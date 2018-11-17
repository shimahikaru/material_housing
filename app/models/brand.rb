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
    "キッチン":1, 洗面所:2, バス:3, トイレ:4, 玄関収納:5, リビング収納:6, キッチン収納:7, "収納(その他)":8, フローリング:9, 畳:10, クッションフロア:11, 玄関床:12, "床(その他)":13, 壁紙:14, 塗り壁:15, "壁(自然素材)":16, "壁(その他)":17, ペット向け:18, タイル:19, 扉:20, 照明:21, カーテン:22, "水回りアクセサリー":23
  }

  enum grade: {
   お手頃:1, ベーシック:2, やや高め:3, ハイグレード:4
  }

end

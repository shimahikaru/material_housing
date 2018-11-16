class Brand < ApplicationRecord
  belongs_to :company

  has_many :brandimages, inverse_of: :brand, dependent: :delete_all
  accepts_nested_attributes_for :brandimages, reject_if: :all_blank, allow_destroy: true

  has_many :details, inverse_of: :brand, dependent: :delete_all
  accepts_nested_attributes_for :details, reject_if: :all_blank, allow_destroy: true

  has_many :comments, ->{ order("updated_at DESC")}, dependent: :delete_all

  has_many :tags, inverse_of: :brand, dependent: :delete_all
  accepts_nested_attributes_for :tags, reject_if: :all_blank, allow_destroy: true

  has_many :sizes, through: :brand_sizes
  has_many :brand_sizes
  accepts_nested_attributes_for :brand_sizes, reject_if: :all_blank, allow_destroy: true

end

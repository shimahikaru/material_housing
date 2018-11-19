class Brandimage < ApplicationRecord
  mount_uploader :image, ImagesUploader
  belongs_to :brand
end

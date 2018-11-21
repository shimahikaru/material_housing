class Comment < ApplicationRecord
  belongs_to :brand
  mount_uploader :place_image, PlaceImagesUploader
end

class Comment < ApplicationRecord
  belongs_to :brand
  mount_uploader :place_image, Place_imagesUploader
end

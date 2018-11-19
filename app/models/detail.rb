class Detail < ApplicationRecord
  mount_uploader :photo, PhotosUploader
  belongs_to :brand
end

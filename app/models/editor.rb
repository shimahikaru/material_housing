class Editor < ApplicationRecord

  enum category: {
   住宅基礎知識:1, キッチン:2, "トイレ":3, "洗面・バス":4, "内装材":5, "お役立ち情報":6, コラム:7
  }

  mount_uploader :avatar, AvatarsUploader
  mount_uploader :imageone, ImageoneUploader
  mount_uploader :imagetwo, ImagetwoUploader
  mount_uploader :imagethree, ImagethreeUploader
  mount_uploader :imagefour, ImagefourUploader
end

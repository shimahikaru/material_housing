class Question < ApplicationRecord

has_many :answers, ->{ order("updated_at DESC")}, dependent: :delete_all
  mount_uploader :questionimg, QuestionimgsUploader
end

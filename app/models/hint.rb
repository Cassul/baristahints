class Hint < ApplicationRecord
  has_many :comments,
  dependent: :delete_all
  belongs_to :user
  mount_uploader :image, ImageUploader
end
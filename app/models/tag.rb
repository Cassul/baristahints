class Tag < ApplicationRecord
  has_many :taggings, dependent: :delete_all
  has_many :hints, through: :taggings
  def to_s
    tag_name
  end
end

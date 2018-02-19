class Clike < ApplicationRecord
  belongs_to :user
  validates :user_id,
  presence: true,
  uniqueness: true
  belongs_to :comment
  validates :comment_id,
  presence: true,
  uniqueness: true
end

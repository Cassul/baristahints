class Like < ApplicationRecord
  belongs_to :user
  validates :user_id,
  presence: true
  belongs_to :hint
  validates :hint_id,
  presence: true
end

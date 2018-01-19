class User < ApplicationRecord
  has_many :comments,
  dependent: :delete_all
  has_many :hints,
  dependent: :delete_all
  has_secure_password
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true
end

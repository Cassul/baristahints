class User < ApplicationRecord
  has_many :comments,
  dependent: :destroy
  has_many :hints,
  dependent: :destroy
  has_secure_password
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true
end

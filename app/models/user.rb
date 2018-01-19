class User < ApplicationRecord
  has_many :comments,
  dependent: :delete_all
  has_many :hints,
  dependent: :delete_all
  has_secure_password
  validates :username, presence: true, on: :save
  validates :email, presence: true, on: :save
  validates :password, presence: true, on: :save
end

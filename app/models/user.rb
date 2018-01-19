class User < ApplicationRecord
  has_many :comments,
  dependent: :delete_all
  has_many :hints,
  dependent: :delete_all
  has_secure_password
end

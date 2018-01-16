class User < ApplicationRecord
  has_many :comments
  has_many :hints
  has_secure_password
end

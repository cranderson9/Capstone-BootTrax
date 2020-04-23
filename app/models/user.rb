class User < ApplicationRecord
  has_many :hikes

  has_secure_password
  validates :email, presence: true, uniqueness: true
end

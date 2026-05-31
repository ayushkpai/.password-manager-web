class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  has_many :passwords, dependent: :destroy
  has_secure_password
end

class User < ApplicationRecord
  has_secure_password

  validates :email, :uniqueness => true

  has_many :assignments
  has_many :roles, through: :assignments
end

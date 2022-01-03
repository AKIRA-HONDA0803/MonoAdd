class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_secure_password
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :password, presence: true, length: { minimum: 6 }
  validates :email, presence: true, length: { maximum: 40 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  has_many :addresses
  has_many :categories
  has_many :items
end

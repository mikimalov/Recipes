class User < ApplicationRecord
  EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  MINIMUM_LENGTH = 8

  has_secure_password

  has_many :recipes, dependent: :destroy

  validates :full_name, presence: true, length: {minimum: MINIMUM_LENGTH}
  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true, presence: true, format: {with: EMAIL_REGEX }
  validates :password, presence: true, length: {minimum: MINIMUM_LENGTH}
end


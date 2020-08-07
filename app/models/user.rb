class User < ApplicationRecord
  EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  has_many :recipes, dependent: :destroy

  validates :full_name, presence: true, length: {minimum: 10}
  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true, presence: true, format: {with: EMAIL_REGEX }
end


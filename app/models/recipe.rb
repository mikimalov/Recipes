class Recipe < ApplicationRecord
  belongs_to :user
  
  has_many :ingredients, :instructions, dependent: :destroy

  accepts_nested_attributes_for :ingredients, :instructions, allow_destroy: true

  validates :description, presence: true
end

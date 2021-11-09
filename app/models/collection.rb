class Collection < ApplicationRecord
  belongs_to :user

  has_many :favorite_restaurants
  has_many :restaurants, through: :favorite_restaurants

  # validations
  validates_presence_of :vegetarian_favorites
  validates_presence_of :meat_lovers
end

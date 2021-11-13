class Collection < ApplicationRecord
  belongs_to :user

  has_many :favorite_restaurants
  has_many :restaurants, through: :favorite_restaurants

  # validations
  validates_presence_of :restaurant_type
end

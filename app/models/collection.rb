class Collection < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :favorite_restaurants
  

  # validations
  validates_presence_of :vegetarian_favorites
  validates_presence_of :meat_lovers
end

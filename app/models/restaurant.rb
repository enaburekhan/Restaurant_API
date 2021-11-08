class Restaurant < ApplicationRecord
  has_many :favorite_restaurants

  # validations
  validates_presence_of :name
  validates_presence_of :opening_date
end

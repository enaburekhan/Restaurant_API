class FavoriteRestaurant < ApplicationRecord
  has_many :collections
  has_many :restaurants
end

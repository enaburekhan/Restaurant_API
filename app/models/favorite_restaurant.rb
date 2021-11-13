class FavoriteRestaurant < ApplicationRecord
  belongs_to :collection
  belongs_to :restaurant
end

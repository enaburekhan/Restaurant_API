class AddFavoriteRestaurantToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_reference :restaurants, :favorite_restaurant, foreign_key: true
  end
end

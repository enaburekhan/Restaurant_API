class RemoveFavoriteRestaurantFromRestaurants < ActiveRecord::Migration[6.1]
  def change
    remove_reference :restaurants, :favorite_restaurant, foreign_key: true
  end
end

class RemoveFavoriteRestaurantFromCollections < ActiveRecord::Migration[6.1]
  def change
    remove_reference :collections, :favorite_restaurant, null: false, foreign_key: true
  end
end

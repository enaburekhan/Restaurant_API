class AddFavoriteRestaurantToCollections < ActiveRecord::Migration[6.1]
  def change
    add_reference :collections, :favorite_restaurant, null: false, foreign_key: true
  end
end

class RemoveVegetarianFavoritesFromCollections < ActiveRecord::Migration[6.1]
  def change
    remove_column :collections, :vegetarian_favorites
  end
end



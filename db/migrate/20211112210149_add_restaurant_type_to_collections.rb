class AddRestaurantTypeToCollections < ActiveRecord::Migration[6.1]
  def change
    add_column :collections, :restaurant_type, :string
  end
end

class RemoveMeatLoversFromCollections < ActiveRecord::Migration[6.1]
  def change
    remove_column :collections, :meat_lovers
  end
end

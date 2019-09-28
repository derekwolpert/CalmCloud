class RemoveFavoritesFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :favorites, :text, array: true, default: [], null: false
  end
end

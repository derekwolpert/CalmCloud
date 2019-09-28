class AddFavoritesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :favorites, :text, array: true, default: [], null: false
  end
end
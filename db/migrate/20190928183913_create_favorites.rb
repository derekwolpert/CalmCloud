class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :favorited, polymorphic: true, index: true
      t.references :user, index: true
      t.timestamps
    end
  end
end

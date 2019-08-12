class AddToTracks < ActiveRecord::Migration[5.2]
  def change
    add_column :tracks, :tag_id, :integer
    add_index :tracks, :tag_id
  end
end

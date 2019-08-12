class RemoveFromTracks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tracks, :background_color, :string
  end
end

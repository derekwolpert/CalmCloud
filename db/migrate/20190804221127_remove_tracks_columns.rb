class RemoveTracksColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :tracks, :audio_url
    remove_column :tracks, :artwork_url
  end
end

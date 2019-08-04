class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.integer :user_id, null: false
      t.string :title, null: false
      t.string :audio_url, null: false
      t.integer :track_length, null: false
      t.integer :play_count, null: false
      t.text :description
      t.string :artwork_url
      t.string :background_color
      t.timestamps
    end
    add_index :tracks, :user_id
  end
end
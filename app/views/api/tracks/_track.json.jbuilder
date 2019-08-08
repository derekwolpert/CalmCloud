json.extract! track, :id, :user_id,  :title, :track_length, :play_count, :description, :background_color, :created_at
json.trackAudioUrl url_for(track.audio_track)
json.trackArtworkUrl url_for(track.track_artwork)
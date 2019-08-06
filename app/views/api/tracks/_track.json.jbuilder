json.extract! track, :id, :user_id,  :title, :track_length, :play_count, :description, :background_color, :created_at
json.audioTrackUrl url_for(track.audio_track)
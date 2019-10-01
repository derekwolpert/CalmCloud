json.set! track.id do
    json.extract! track, :id, :user_id, :title, :description, :track_length, :play_count, :created_at
    json.trackAudioUrl url_for(track.audio_track)
    if track.track_artwork.attached?
        json.trackArtworkUrl url_for(track.track_artwork)
    end
end
json.user do
    json.partial! "api/users/user", user: @user
end

@favoriteTracks.each do |track|
    json.users do
        json.set! track.user.username do
            json.partial! "api/users/user", user: track.user
        end
    end
end

json.tracks do
    (@user.tracks + @user.favorite_tracks).uniq.each do |track|
        json.set! track.id do
            json.extract! track, :id, :user_id, :title, :track_length, :play_count, :created_at
            json.trackAudioUrl url_for(track.audio_track)
            if track.track_artwork.attached?
                json.trackArtworkUrl url_for(track.track_artwork)
            end
        end
    end
end
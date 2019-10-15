json.user do
    json.partial! "api/users/user", user: @user
end

if @favorite_tracks
    users = ((@favorite_tracks.map { |track| track.user }.select { |user| user.id != @user.id }) + @user.user_subscribers + @user.subscribe_users).uniq
    users.each do |user|
        json.users do
            json.set! user.username do
                json.partial! "api/users/user", user: user
            end
        end
    end
end

if @favorite_tracks
    json.tracks do
        (@user.tracks + @favorite_tracks).uniq.each do |track|
            json.set! track.id do
                json.extract! track, :id, :user_id, :title, :track_length, :play_count, :created_at
                json.trackAudioUrl url_for(track.audio_track)
                if track.track_artwork.attached?
                    json.trackArtworkUrl url_for(track.track_artwork)
                end
            end
        end
    end
else
    json.tracks do
        @user.tracks.each do |track|
            json.set! track.id do
                json.extract! track, :id, :user_id, :title, :track_length, :play_count, :created_at
                json.trackAudioUrl url_for(track.audio_track)
                if track.track_artwork.attached?
                    json.trackArtworkUrl url_for(track.track_artwork)
                end
            end
        end
    end
end
json.tracks do
    @tracks.each do |track|
        json.set! track.id do
            json.extract! track, :id, :user_id, :title, :track_length, :play_count, :created_at
            json.trackAudioUrl url_for(track.audio_track)
            json.trackArtworkUrl url_for(track.track_artwork)
        end
    end
end

@tracks.each do |track|
    json.users do
        json.set! track.user.id do
            json.extract! track.user, :id, :display_name, :username
            if track.user.profile_pic.attached?
                json.userPictureUrl url_for(track.user.profile_pic)
            end
        end
    end
end
json.tracks do
    @tracks.each do |track|
        json.partial! "api/tracks/track", track: track
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
json.track do
    json.extract! @track, :id, :user_id, :title, :track_length, :play_count, :created_at
    json.trackAudioUrl url_for(@track.audio_track)
    if @track.track_artwork.attached?
        json.trackArtworkUrl url_for(@track.track_artwork)
    end
end

json.user do
    json.extract! @track.user, :id, :display_name, :username
    if @track.user.profile_pic.attached?
        json.userPictureUrl url_for(@track.user.profile_pic)
    end
end

json.track do
    json.extract! @track, :id, :user_id, :title, :description, :track_length, :play_count, :created_at
    json.trackAudioUrl url_for(@track.audio_track)
    if @track.track_artwork.attached?
        json.trackArtworkUrl url_for(@track.track_artwork)
    end
    json.commentCount @track.comments.length
    json.favoriteCount @track.favorites.length
    if @track.comments.length > 0
        json.comments do
            @track.comments.each do |comment|
                json.set! comment.id do
                    json.extract! comment, :id, :track_id, :user_id, :parent_comment_id, :body, :created_at
                    json.childComments do
                        json.array! @track.comments.map { |otherComments| otherComments.id if otherComments.parent_comment_id == comment.id }.compact
                    end
                end
            end
        end
    else
        json.comments({})
    end
end

json.users do
    ([@track.user] + @track.comments.map { |comment| comment.user }).uniq.each do |user|
        json.set! user.username do
            json.extract! user, :id, :display_name, :username
            if user.profile_pic.attached?
                json.userPictureUrl url_for(user.profile_pic)
            end
        end
    end
end

json.tracks do
    @track.user.tracks.each do |track|
        if track.id != @track.id
            json.set! track.id do
                json.extract! track, :id, :user_id, :title, :play_count, :track_length, :created_at
                if track.track_artwork.attached?
                    json.trackArtworkUrl url_for(track.track_artwork)
                end
            end
        end
    end
end


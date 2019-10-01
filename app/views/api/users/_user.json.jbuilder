json.extract! user, :id, :username, :display_name, :biography, :country, :city
if user.profile_pic.attached?
    json.userPictureUrl url_for(user.profile_pic)
end
json.favorites user.favorites.map{ |track| track.favorited_id if track.favorited_type == "Track"}.compact
json.extract! user, :id, :display_name, :biography, :country, :city
if user.profile_pic.attached?
    json.userPictureUrl url_for(user.profile_pic)
end
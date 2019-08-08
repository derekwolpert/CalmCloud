json.extract! user, :id, :display_name, :biography, :country, :city
json.userPictureUrl url_for(user.profile_pic)
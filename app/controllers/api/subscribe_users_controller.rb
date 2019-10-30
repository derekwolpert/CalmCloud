class Api::SubscribeUsersController < ApplicationController  
	def create
        @user = User.includes(:comments, :favorites, :subscriptions, :subscribers, profile_pic_attachment: :blob, profile_cover_attachment: :blob, tracks: [ audio_track_attachment: :blob, track_artwork_attachment: :blob], favorite_tracks: [ audio_track_attachment: :blob, track_artwork_attachment: :blob, user: [:tracks, :comments, :favorites, :subscriptions, :subscribers, profile_pic_attachment: :blob]], user_subscribers: [profile_pic_attachment: :blob], subscribe_users: [profile_pic_attachment: :blob]).find(params[:id])
        if @user.id != current_user.id
            if Subscription.create(subscribed: @user, user: current_user)
                render 'api/users/show'
            else
                render 'api/users/show'
            end
        else
            render 'api/users/show'
        end
	end

    def destroy
        @user = User.includes(:comments, :favorites, :subscriptions, :subscribers, profile_pic_attachment: :blob, profile_cover_attachment: :blob, tracks: [ audio_track_attachment: :blob, track_artwork_attachment: :blob], favorite_tracks: [ audio_track_attachment: :blob, track_artwork_attachment: :blob, user: [:tracks, :comments, :favorites, :subscriptions, :subscribers, profile_pic_attachment: :blob]], user_subscribers: [profile_pic_attachment: :blob], subscribe_users: [profile_pic_attachment: :blob]).find(params[:id])
		Subscription.where(subscribed_id: @user.id, subscribed_type: "User", user_id: current_user.id).first.destroy
		render 'api/users/show'
	end
end
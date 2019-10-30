class Api::FavoriteTracksController < ApplicationController  
	def create
		@track = Track.includes(audio_track_attachment: :blob, track_artwork_attachment: :blob, user: [profile_pic_attachment: :blob]).find(params[:id])
		if Favorite.create(favorited: @track, user: current_user)
			render 'api/tracks/show'
		else
			render 'api/tracks/show'
		end
	end

	def destroy
		@track = Track.includes(audio_track_attachment: :blob, track_artwork_attachment: :blob, user: [profile_pic_attachment: :blob]).find(params[:id])
		Favorite.where(favorited_id: @track.id, favorited_type: "Track", user_id: current_user.id).first.destroy
		render 'api/tracks/show'
	end
end
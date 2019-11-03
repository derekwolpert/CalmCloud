class Api::FavoriteTracksController < ApplicationController  
	def create
		@track = Track.find(params[:id])
		@favorite = Favorite.new(favorited: @track, user: current_user)
		if @favorite.save
			render json: params[:id]
		else
			render json: @favorite.errors.full_messages, status: 401
		end
	end

	def destroy
		@track = Track.find(params[:id])
		Favorite.where(favorited_id: @track.id, favorited_type: "Track", user_id: current_user.id).first.destroy
		render json: params[:id]
	end
end
class Api::SubscribeUsersController < ApplicationController  
	def create
        @user = User.find(params[:id])
        if @user.id != current_user.id
            if Favorite.create(favorited: @user, user: current_user)
                render 'api/users/show'
            else
                render 'api/users/show'
            end
        else
            render 'api/users/show'
        end
	end

	def destroy
		@user = User.find(params[:id])
		Favorite.where(favorited_id: @user.id, favorited_type: "User", user_id: current_user.id).first.destroy
		render 'api/users/show'
	end
end
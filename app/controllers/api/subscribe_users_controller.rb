class Api::SubscribeUsersController < ApplicationController  
	def create
        @user = User.find(params[:id])
        if @user.id != current_user.id
            if Subscription.create(subscribed: @user, user: current_user)
                render json: params[:id]
            else
                render json: params[:id]
            end
        else
            render json: params[:id]
        end
	end

    def destroy
        @user = User.find(params[:id])
		Subscription.where(subscribed_id: @user.id, subscribed_type: "User", user_id: current_user.id).first.destroy
		render json: params[:id]
	end
end
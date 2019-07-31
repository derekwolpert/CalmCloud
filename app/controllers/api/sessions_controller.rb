class Api::SessionsController < ApplicationController
    def create
        @user = User.find_by_username(params[:user][:login], params[:user][:password])
        @user ||= User.find_by_email(params[:user][:login], params[:user][:password])

        if @user.nil?
            render json: ['User could not be found!'], status: 401
        else
            login!(@user)
            render 'api/users/show';
        end
    end

    def destroy
        logout!
        render json: { message: 'Logout successful.' }
    end
end
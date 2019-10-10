class Api::SessionsController < ApplicationController
    def create
        @user = User.with_attached_profile_pic.includes(tracks: { audio_track_attachment: :blob, track_artwork_attachment: :blob} ).includes(:favorites).includes(:subscriptions).includes(:subscribers).find_by_username(params[:user][:login], params[:user][:password])
        @user ||= User.with_attached_profile_pic.includes(tracks: { audio_track_attachment: :blob, track_artwork_attachment: :blob} ).includes(:favorites).includes(:subscriptions).includes(:subscribers).find_by_email(params[:user][:login], params[:user][:password])

        if @user.nil?
            if User.find_by(username: params[:user][:login]) || User.find_by(email: params[:user][:login])
                render json: ["Incorrect password"], status: 401
            else
                if (params[:user][:login]).count("@") > 0 && (params[:user][:login]).split("@").last.count(".") > 0
                    render json: ["There is no account registered with this email address. Please register."], status: 401
                else
                    render json: ["Username does not exist"], status: 401
                end
            end
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
class Api::UsersController < ApplicationController

    def create
        @user = User.new(user_params)

        errs = []

        if User.find_by(email: params[:user][:email])
            errs.push("This email address is already in use, please login.")
        end
            
        if (params[:user][:email]).count("@") <= 0 && (params[:user][:email]).split("@").last.count(".") <= 0
            errs.push("Enter a valid email address.")
        end
        
        if User.find_by(username: params[:user][:username])
            errs.push("This username is already taken")
        end

        if (params[:user][:password]).length < 6
            errs.push("Enter a valid password, at least 6 characters.")
        end

        if errs.length > 0
            render json: errs, status: 401
        elsif @user.save
            login!(@user)
            render :show
        else
            render json: @user.errors.full_messages, status: 401
        end
    end

    def update
        @user = User.find(params[:id])
        if @user && @user.update_attributes(user_params)
            render :show
        elsif !@user
            render json: ['Could not locate user'], status: 400
        else
            render json: @user.errors.full_messages, status: 401
        end
    end

    def show
        @user = User.with_attached_profile_pic.includes(tracks: { audio_track_attachment: :blob, track_artwork_attachment: :blob}).find(params[:id])
    end

    def destroy
        @user = User.find(params[:id])

        if @user
            @user.destroy
            render :show
        else
            render ['Could not find user']
        end
    end

    private

    def user_params
        params.require(:user).permit(:email, :username, :password)
    end


end
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

        if @user.save
            login!(@user)
            render :show
        else
            render json: errs, status: 401
        end
    end

    def update
        @user = selected_user
        if @user && @user.update_attributes(user_params)
            render :show
        elsif !@user
            render json: ['Could not locate user'], status: 400
        else
            render json: @user.errors.full_messages, status: 401
        end
    end

    def show
        @user = selected_user
    end

    def destroy
        @user = selected_user

        if @user
            @user.destroy
            render :show
        else
            render ['Could not find user']
        end
    end

    private

    def selected_user
        User.find_by(params[:id])
    end

    def user_params
        params.require(:user).permit(:email, :username, :password)
    end


end
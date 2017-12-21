class SessionsController < ApplicationController
    skip_before_action :require_login, only: [:new, :login]

    def register
        @user = User.new user_params
        if @user.save
            session[:user_id] = @user.id
            redirect_to "/home"
        else
            flash[:errors] = [@user.errors.full_messages]
            redirect_to "/register"
        end
    end

    def login
        @user = User.find_by_username(params[:username])
        if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          redirect_to "/home"
        else 
          flash[:errors] = ["Invalid Combination"]
          redirect_to "/login"
        end
    end

    def destroy
        reset_session
        redirect_to "/"
    end



    private
    def user_params
        params.require(:user).permit(:username, :first_name, :last_name, :password, :password_confirmation, :email)
    end
end

class SessionsController < ApplicationController 

    def new 
    end 

    def create 
        @user = User.find_by(username: params[:username])
        if @user.nil? 
            flash.now.alert = 'Invalid username'
            render :new
        elsif @user.authenticate(params[:password])
            session[:user_id] = @user.id 
            redirect_to root_path
        else 
            flash.now.alert = 'Invalid password'
            render :new
        end 
    end 

end 
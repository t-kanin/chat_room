class SessionsController < ApplicationController 

    def new 
    end 

    def create 
        @user = User.find_by(username: params[:username].downcase)
        if @user.nil? 
            flash.now[:error] = 'Invalid username'
            render :new
        elsif @user.authenticate(params[:password])
            session[:user_id] = @user.id 
            flash[:success] = "Login successfully"
            redirect_to root_path
        else 
            flash.now[:error] = 'Invalid password'
            render :new
        end 
    end 

    def destroy 
        session.delete(:user_id)
        flash[:notice] = "Logout successfully" 
        redirect_to login_path
    end 

end 
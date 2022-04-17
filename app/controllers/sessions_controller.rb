class SessionsController < ApplicationController
    def new
    end
  
    def create
      user = User.find_by(email: params[:email])
      if user.present? && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to properties_path, notice: "Logged in successfully"
      else
        flash.now[:notice] = "Invalid email or password"
        render :new, status: :unprocessable_entity
      end
    end
  
    def destroy
      session[:user_id] = nil
      flash[:notice] = "Logged out"
      redirect_to root_path
    end
  end
  
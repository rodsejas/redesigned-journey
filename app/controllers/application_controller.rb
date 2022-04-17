class ApplicationController < ActionController::Base
    before_action :set_current_user
    before_action :fetch_user

    private
    def fetch_user
        @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
        session[:user_id] = nil unless @current_user.present? # Log out non-existent users.
    end

    def check_for_login
        redirect_to sign_in_path unless @current_user.present?
    end

    def set_current_user
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id])
        end
    end

end

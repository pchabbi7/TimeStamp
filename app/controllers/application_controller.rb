class ApplicationController < ActionController::Base

    before_action :authorized
    helper_method :current_user
    helper_method :logged_in?

    #TODO:Change the $session_user_id global variable to sessions. 
    def current_user
       User.find_by(id: $session_user_id)
    end

    def logged_in?
        !current_user.nil?
    end
    
    def authorized
        redirect_to '/welcome' unless logged_in?
    end  
    
    def is_admin?
        logged_in? ? current_user.is_administrator : false
    end 
end

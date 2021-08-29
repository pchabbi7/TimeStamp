class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_before_action :authorized, only: [:new, :create, :welcome]
  
  def new
  end

  def create
   binding.pry
    @user = User.find_by(username: params["user"]["login"])
    if @user 
       $session_user_id = @user.id

       redirect_to url_for(:controller => :clock_events, :action => :index)
       $logged_in = nil
    else
       $logged_in = "failed"
       redirect_to '/login'
    end
 end

 def page_requires_login
 end 

  def login
  end

  def welcome
  end
end

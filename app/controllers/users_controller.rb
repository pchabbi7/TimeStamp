class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_before_action :authorized, only: [:new, :create]
  def new
    @user = User.new
  end

  def create
    binding.pry
    @user = User.create(params.require(:user).permit(:username, :password))
    $session_user_id = @user.id
    redirect_to url_for(:controller => :clock_events, :action => :index)
  end

 
end

  class ClockEventsController < ApplicationController
    
    skip_before_action :verify_authenticity_token

    def index
      @current_user = User.find_by(id: $session_user_id)
      @clock_events = ClockEvent.order('logged_in_time DESC').all if is_admin?
      @clock_events = ClockEvent.where(user_id: $session_user_id).order('logged_in_time DESC').all if !is_admin?
    end
  
    def show
      @clock_event = ClockEvent.find(params[:id])
    end
  
    def edit
      @clock_event = ClockEvent.find(params[:id])
    end
    
    def new
      redirect_to show_clock_event_path
    end
  
    def create
      if params["type"] == "ClockIn"
        @event = ClockEvent.new
        @event.name = User.find_by(id: $session_user_id).username
        @event.user_id = $session_user_id
        @event.clocking_in = true 
        @event.logged_in_time = params["datetime-local"] 
        @event.save!
      end 

      if params["type"] == "ClockOut"
        @event = ClockEvent.where(user_id: $session_user_id).order('logged_in_time DESC').all.first
        @event.logged_out_time = params["datetime-local"] 
        @event.save!
      end 

      if params["update"]
        @event = ClockEvent.where(id: params["user_id"]).first
        @event.logged_in_time = params["logged_in"]
        @event.logged_out_time = params["logged_out"]
        @event.save
      end  

      redirect_to show_clock_event_path
    end
  
    def update
    end
  
    def destroy
    end
  end
  
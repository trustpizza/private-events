class EventsController < ApplicationController
  
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end 
  
  def create
    @event = current_user.events.build(event_params)
  end

  private
  def event_params
    params.require(:event).permit(:title, :date)
  end
end



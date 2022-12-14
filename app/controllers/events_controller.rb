class EventsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @events = Event.all
    redirect_to new_event_path if @events.empty? 
    @past_events = Event.past_event
    @future_events = Event.future_event
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end 
  
  def create
    @event = current_user.events.build(event_params)

    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def event_params
    params.require(:event).permit(:title, :event_date)
  end
end


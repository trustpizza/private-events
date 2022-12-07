class InvitationsController < ApplicationController
  def index
    @invitations = Invitation.all
  end

  def show 
  end

  def new
    event = Event.find(params[:event_id])
    
    @invitation = current_user.invitations.build
  end

  def create 
    event = Event.find(params[:event])
    user = User.find(params[:user])
    @invitation = Invitation.new({event_id: event.id, user_id: user.id})

    if @invitation.save
      redirect_to root_path
    else
      render :new
    end
  end
end
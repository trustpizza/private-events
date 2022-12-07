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
    @invitation = Invitation.new(params)

    if @invitation.save!(params)
      redirect_to root_path
    else
      render :new
    end
  end
end
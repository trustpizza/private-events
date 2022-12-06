class InvitationsController < ApplicationController
  def index
    @events = Event.all
    @invitations_events = []
    @user_invitaions = current_user.invitations
    @user_invitations.each do |invitation|
      @invitation_events << invitation.event_id
    end
  end
end
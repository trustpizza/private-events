class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @attended_events = @user.attended_events
  end

  def index
    @users = User.all
  end
end

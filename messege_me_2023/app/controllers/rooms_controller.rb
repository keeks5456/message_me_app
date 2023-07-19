class RoomsController < ApplicationController
  # before_action :authenticate_user
  def index
    @current_user = current_user
    redirect_to '/signup' unless @current_user
    @rooms = Room.public_rooms
    @users = User.all_except(current_user)
    
  end
end

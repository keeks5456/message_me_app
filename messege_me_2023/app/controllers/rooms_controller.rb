class RoomsController < ApplicationController

  def index
    @current_user = current_user
    redirect_to '/signup' unless @current_user
    @rooms = Room.public_rooms
    @users = User.except(current_user)
  end
  
  def new 
    @room = Room.new
  end
  
  def create
    @room = Room.create(name: params("name"))
  end
  
end

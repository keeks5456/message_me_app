class RoomsController < ApplicationController

  def index
    @current_user = current_user
    redirect_to '/signup' unless @current_user
    @rooms = Room.public_rooms
    @users = User.except(current_user)
  end
  
  def show
    @current_user = current_user
    @single_room = Room.find(params[:id])
    @rooms = Room.public_rooms
    @users = User.all_except(@current_user)
    @room = Room.new
    @message = Message.new
    render "index"
  end
  
  def new 
    @room = Room.new
  end
  
  # come back to this
  def create
    @room = Room.create(name: params["name"])
  end
  
end

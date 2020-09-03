class RoomsController < ApplicationController
  before_action :authenticate_user!
  def index
    
  end
  

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    @room.save(validate: false)
    redirect_to room_messages_path(@room)
  end

  def destroy
    room = Room.find(params[:id])
    room.destroy
    redirect_to rooms_path
  end
  
  
  private
  def room_params
    params.permit(user_ids: [])
  end
  
  
end

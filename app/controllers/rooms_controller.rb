class RoomsController < ApplicationController

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    @room.save(validate: false)
    redirect_to messages_path
  end



  

  private
  def room_params
    params.permit(user_ids: [])
  end
  
  
end

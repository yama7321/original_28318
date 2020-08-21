class UsersController < ApplicationController
  
  def show
    @orders = Order.where(user_id: current_user.id).order('created_at DESC')
  end
  
end

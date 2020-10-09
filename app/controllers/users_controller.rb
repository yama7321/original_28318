class UsersController < ApplicationController
  
  def show
    # 現在ログインしているユーザーの契約情報を@ordersに格納
    @orders = Order.where(user_id: current_user.id).order('created_at DESC')
  end
  
end

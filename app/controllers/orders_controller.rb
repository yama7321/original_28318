class OrdersController < ApplicationController

  def index
    @profile = Profile.find(params[:profile_id])
  end

  def create
    @order = Order.new(user_id: order_params[:user_id], profile_id: order_params[:profile_id])
    if @order.valid?
      pay_order
      @order.save
    else
      render 'index'
    end
    
  end
  
  
  private
  def order_params
    params.permit(:token, :profile_id).merge(user_id: current_user.id)
  end
  
  def pay_order
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      amount: @order.profile.price,
      card: order_params[:token],
      currency: 'jpy'
    )
  end
  
end

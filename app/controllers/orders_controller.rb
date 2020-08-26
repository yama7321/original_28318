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

  def destroy
    @order = Order.find(params[:id])
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    subscription = Payjp::Subscription.retrieve(@order.subscription_id)
    subscription.delete
    @order.status = false
    @order.save!
    redirect_to user_path(current_user)
  end
  
  
  private
  def order_params
    params.permit(:token, :profile_id).merge(user_id: current_user.id)
  end
  
  def pay_order
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    # Payjp::Charge.create(
    #   amount: @order.profile.price,
    #   card: order_params[:token],
    #   currency: 'jpy'
    # )
    customer = Payjp::Customer.create(card: params[:token])
    plan = Payjp::Plan.create(
      amount: @order.profile.price,
      interval: 'month',
      currency: 'jpy'
    )
    subscription = Payjp::Subscription.create(
      customer: customer.id,
      plan: plan.id
    )
    @order.status = true
    @order.subscription_id = subscription.id
  end
  
end

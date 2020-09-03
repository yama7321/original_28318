class ReviewsController < ApplicationController

  before_action :authenticate_user!

  def create
    Review.create(review_params)
    redirect_to profile_path(params[:profile_id])
  end

  private
  def review_params
    params.require(:review).permit(:content, :valuation).merge(user_id: current_user.id, profile_id: params[:profile_id])
  end
end

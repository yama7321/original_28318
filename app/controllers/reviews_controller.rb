class ReviewsController < ApplicationController

  before_action :authenticate_user!

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to profile_path(params[:profile_id])
    else
      flash[:alert] = 'レビューを投稿するにはコメントを入力してください'
      redirect_to profile_path(@review.profile.id)
      
    end
  end

  private
  def review_params
    params.require(:review).permit(:content, :valuation).merge(user_id: current_user.id, profile_id: params[:profile_id])
  end
end

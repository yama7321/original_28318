class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all.order('created_at DESC').page(params[:page]).per(4)
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  private
  def profile_params
    params.require(:profile).permit(:title, :image, :slide, :self_introduction, :price).merge(user_id: current_user.id)
  end


end

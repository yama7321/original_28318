class ProfilesController < ApplicationController
  def index
    if params[:sort] && params[:sort] != "orders.count asc"
      @profiles = Profile.all.order(params[:sort]).page(params[:page]).per(10)
      render :index
    elsif params[:sort]
      array = Profile.all.sort { |a,b| b.orders.count <=> a.orders.count }
      @profiles = Kaminari.paginate_array(array).page(params[:page]).per(10)
      render :index
    else
      @profiles = Profile.all.order('created_at DESC').page(params[:page]).per(10)
    end
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @user = User.find(current_user.id)
    if @profile.save
      @user.mentor = true
      @user.save!(validate: false)
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end
  
  def update
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      redirect_to profile_path(@profile)
    else
      render :edit
    end
  end

  def destroy
    @profile = Profile.find(params[:id])
    @user = User.find(current_user.id)
    if @profile.destroy
      @user.mentor = false
      @user.save!(validate: false)
      redirect_to root_path
    else
      render :edit
    end
  end
  
  private
  def profile_params
    params.require(:profile).permit(:title, :image, :slide, :self_introduction, :price).merge(user_id: current_user.id)
  end


end

class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def image
    @user=current_user
  end

  def addimage
    @user.imglink = params[:imglink]
    @user.save
    redirect_to user_path(current_user.id)
  end

  def show
    @user = User.find(params[:id])
  end

end

class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def image
    @user = current_user
  end

  def addimage
    @user = current_user
    @user.imglink = params[:user][:imglink]
    @user.save
    redirect_to user_path(@user.id)
  end

  def show
    @user = User.find(params[:id])
  end

end

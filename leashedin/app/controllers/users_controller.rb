class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	#@user = User.new(params[:user])
    @user = User.new(user_params)
  	if @user.save
  		session[:user_id] = @user.user_id
  		redirect_to_root_url
  	else
  		render:action => "new"
  	end
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation)
  end

end

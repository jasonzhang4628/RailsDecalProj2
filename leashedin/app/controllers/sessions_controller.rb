class SessionsController < ApplicationController
  def new
  	@user = User.authenitcate(params[:email], params[:password])
  	if @user
  		session[:user_id] = @user.user_id
  		redirect_to_root_url
  	else
  		session[:user_id] = nil
  		render:action => "new"
  		flash[:notice] = "Wrong email or password"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to_root_url
  end
end

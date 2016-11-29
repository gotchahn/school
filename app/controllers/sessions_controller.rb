class SessionsController < ApplicationController
  def new
  end

  def create
  	email = params[:session][:email]
  	passw = params[:session][:password]

  	@user = User.find_by_email(email)

  	if @user && @user.authenticate(passw)
  		login(@user)
  	else
  		redirect_to login_path, flash: { error: "Email o Password incorrecto"}
  	end
  end

  def destroy
  end
end

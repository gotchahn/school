class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #http_basic_authenticate_with name: "messi", password: "barcelona"
  helper_method :current_user

  def login(user)
  	session[:user_id] = user.id
  	redirect_to students_path
  end

  def current_user
  	if session[:user_id]
  		@current_user = User.find(session[:user_id])
  	end
  end
end

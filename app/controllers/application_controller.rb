class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :admin?
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end
  
  def admin?
  if current_user
  current_user.admin
  end
  end
  
  def authorize_admin
  unless admin?
    flash[:error] = "unauthorized access"
    redirect_to root_path
    false
  end
  end
end

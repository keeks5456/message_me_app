class ApplicationController < ActionController::Base
  # protect_from_forgery 

  helper_method :current_user, :logged_in?
  
  def current_user
    @currrent_user ||= User.find(session[:user_id]) if session[:user_id]
    rescue ActiveRecord::RecordNotFound
  end
  
  def logged_in?
      !!current_user
  end
  
  def require_user
     if !logged_in?
     flash[:error] = "You must be logged in to perform that action" 
     redirect_to login_path unless current_user
     end
  end
  
end

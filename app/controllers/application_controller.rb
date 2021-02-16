class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  helper_method :current_user, :logged_in?, :alert_color
 

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
   end

  def logged_in?
    !!current_user
   end

    def require_user
      if !logged_in?
        flash[:alert] = 'you must be logged in to perform that action'
        redirect_to login_path
    end
  end

  def alert_color(name)
   if name == "notice"
      return "alert alert-success alert-dismissible fade show"
    else 
      return "alert alert-danger alert-dismissible fade show"
    end
  end

end

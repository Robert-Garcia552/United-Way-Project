class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  # helper allows us to reference the current user in the views.
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end

end

class ApplicationController < ActionController::Base
  helper_method :current_user

  def login(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def require_logged_in
    return true if current_user

    return redirect_to root_path
  end

end

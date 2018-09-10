class ApplicationController < ActionController::Base
  helper_method :current_user

  add_flash_types :danger, :info, :warning, :success

  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        login user
        @current_user = user
      end
    end
  end

  def require_logged_in
    return true if current_user

    return redirect_to root_path
  end

  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

   private

    def login(user)
       session[:user_id] = user.id
    end

end

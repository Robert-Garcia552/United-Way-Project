class SessionsController < ApplicationController
  
  def new
  end

  def create
    @user = User.
              find_by(email: params[:email]).
              try(:authenticate, params[:password])

    return render action: 'new' unless @user

    session[:user_id] = @user.user_id
    redirect_to user_profile_path

  end
end

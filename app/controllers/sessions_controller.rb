class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:email])
              .try(:authenticate, params[:password])
    return render :new unless @user.present?
    login(@user) #comes from ApplicationController
    redirect_to @user
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, success: "You have successfully logged out."
  end

end

class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:email])
              .try(:authenticate, params[:password])
    @permission = params[:permission]

    return render :new unless @user.present?

    login(@user) #comes from ApplicationController
      if @permission == "1"
        remember(@user)
      end #comes from ApplicationController
    redirect_to @user
  end

  def destroy
    current_user.forget
    session[:user_id] = nil
    cookies.delete :remember_token
    cookies.delete :user_id
    redirect_to root_path, success: "You have successfully logged out."
  end

end

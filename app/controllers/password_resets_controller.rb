class PasswordResetsController < ApplicationController
  before_action :get_user,   only: [:edit, :update]
  before_action :valid_user, only: [:edit, :update]
  before_action :check_expiration, only: [:edit, :update]

  def new
  end

  def create
    @user = User.find_by(email: params[:password_reset][:email].downcase)
    if @user
      @user.create_reset_digest
      @user.send_password_reset_email 
      redirect_to root_path, success: "Email sent with password reset instructions."
    else
      redirect_to password_resets_new_path, danger: "Email not found."
    end
  end

  def edit
  end

  def update
    if params[:user][:password].empty?                  # Case (3)
      @user.errors.add(:password, "can't be empty")
      render 'edit'
    elsif @user.update_attributes(user_params)          # Case (4)
      login(@user)
      redirect_to @user, success: "Password has been reset."
    else
      render 'edit'                                     # Case (2)
    end
  end

  private

  def user_params
    params.require(:user).permit(:password, :password_confirmation)
  end

  def get_user
    @user = User.find_by(email: params[:email])
  end

  # might be a security risk
  def valid_user
    unless (@user(:reset, params[:id]))
      redirect_to root_path
    end
  end

  # Checks expiration of reset token.
  def check_expiration
    if @user.password_reset_expired?
      redirect_to new_password_reset_path, danger: "Password reset has expired."
    end
  end

end

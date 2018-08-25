class UserProfileController < ApplicationController

  def index
  end

  def update
    @user = current_user
    @user_profile = user_profile.find(params[:id])
  end

private

def user_profile_params
  params.require(:user_profile)
            .permit(
              :first_name,
              :middle_name,
              :last_name,
              :suffix,
              :email,
              :birthdate,
              :employer,
              :phone_number,
              :gender
            )
end

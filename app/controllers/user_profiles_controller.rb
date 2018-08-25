class UserProfilesController < ApplicationController

  def update
    @user = current_user
    @user_profile = user_profile.find(params[:id])
    index
  end

  def show
  end

private

  def index
    if @user_profile
      render "show"
    else
      render "update"
    end
  end

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
end

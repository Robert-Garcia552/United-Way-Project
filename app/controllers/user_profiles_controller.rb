class UserProfilesController < ApplicationController
  before_action :require_logged_in

  def show
    @user = User.find(params[:id])
  end

  def update
  end

end

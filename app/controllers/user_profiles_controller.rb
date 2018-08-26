class UserProfilesController < ApplicationController
  before_filter :authorize

  def update
    @user = current_user
  end

  def show
    @user = current_user
  end

end

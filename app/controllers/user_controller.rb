class UserController < ApplicationController
  
  def index
  end

  def create
    @user = User.create
  end

  # private
  #   params.require(first_name, last_name)

end

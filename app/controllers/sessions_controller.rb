class SessionsController < ApplicationController
  before_action :authenticate_user!
  
  def new
  end

  def create
  
  end

  def show
    @user = current_user
  end

  def update
  end

end

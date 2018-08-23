class UserController < ApplicationController
  
  def index
    @user = User.find(params[:id])
  end

  def create
    @user = User.new
    if @user.save
      redirect_to user_path, notice: 'Profile was successfully created.'
    else
      redirect_to user_path, notice: "Sorry, could not create profile because #{@user.errors.full_messages.join(', ').downcase}."
    end
  end

end

class UserController < ApplicationController
  
  def index
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to user_create_path, notice: 'Profile was successfully created.'
    else
      redirect_to user_create_path, notice: "Sorry, could not create profile because #{@user.errors.full_messages.join(', ').downcase}."
    end
  end

  def show
  end


end

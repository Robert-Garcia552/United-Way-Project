class UserController < ApplicationController
  
  def index
    @user = User.find(params[:id])
  end

  def create
<<<<<<< HEAD
    @user = User.new
    if @user.save
      redirect_to user_path, notice: 'Profile was successfully created.'
    else
      redirect_to user_path, notice: "Sorry, could not create profile because #{@user.errors.full_messages.join(', ').downcase}."
    end
  end

=======
    @user = User.new(params[:user])
    if @user.save
      redirect_to user_create_path, notice: 'Profile was successfully created.'
    else
      redirect_to user_create_path, notice: "Sorry, could not create profile because #{@user.errors.full_messages.join(', ').downcase}."
    end
  end

  def show
  end


>>>>>>> 67d3ac0665ffcbb32ae72f8d588a5115ea43c1f9
end

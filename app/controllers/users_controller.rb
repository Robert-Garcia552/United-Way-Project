class UsersController < ApplicationController
  
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
  
      return render action: 'new' unless @user.save
  
      redirect_to root_path, notice: 'Created user'
    end
  
    private

    def user_params
      params.
        require(:user).
          permit(
                  :email,
                  :first_name, 
                  :middle_name, 
                  :last_name,
                  :birthdate, 
                  :employer, 
                  :password, 
                  :password_confirmation)
    end
  
  end
  
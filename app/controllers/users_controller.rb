class UsersController < ApplicationController

    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
  
      return render action: 'new' unless @user.save
      
      login(@user)
      redirect_to profile_path
    end
    
    private

    def user_params
      params.
        require(:user).
          permit(
                  :email,
                  :suffix,
                  :first_name, 
                  :middle_name, 
                  :last_name,
                  :birthdate,
                  :gender, 
                  :employer,
                  :phone_number, 
                  :password, 
                  :password_confirmation)
    end
  
  end
  
class UsersController < ApplicationController

    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
  
      return render action: 'new' unless @user.save
  
      redirect_to new_sessions_path
    end

    def edit
      @user = current_user
    end
    
    def update
      @user = current_user
      @user.update_attributes!(user_params)
      
      return render action: 'edit' unless @user.save
      
      redirect_to :action => 'show'
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
  
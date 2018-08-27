class SessionsController < ApplicationController

  def index
    redirect_to :action => 'show'
  end

  def new
  end

  def create
    @user = User.
              find_by(email: params[:email]).
              try(:authenticate, params[:password])

    return render action: 'new' unless @user

    login(@user)
    redirect_to profile_path 
  end

  def show
    @user = current_user
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

  def destroy
    session[:user_id] = nil
    redirect_to root_path
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

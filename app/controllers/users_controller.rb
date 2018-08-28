class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update]
    before_action :validate_access, only: [:edit, :update]

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      return render :new unless @user.save
      login(@user)
      redirect_to @user
    end

    def show
    end

    def edit
    end

    def update
      @user.update(user_params)
      redirect_to @user
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def validate_access
      redirect_to root_path unless current_user.id == @user.id
    end

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

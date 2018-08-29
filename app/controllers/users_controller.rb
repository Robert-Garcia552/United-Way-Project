class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update]
    before_action :validate_access, only: [:edit, :update]

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
        if @user.save
          login(@user)
          redirect_to @user, success: "User successfully created"
        else
          redirect_to new_user_path, danger: "An account with that email may already exist"
        end
    end

    def show
      @events = Event.future.first(3)
      @my_events = current_user.attending_events
    end

    def edit
    end

    def update
      @user.update(user_params)
      redirect_to @user, success: "User successfully updated"
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

class SessionsController < ApplicationController
  
  def new
  end

  def create
    @user = User.
              find_by(email: params[:email]).
              try(:authenticate, params[:password])

    return render action: 'new' unless @user

    session[:user_id] = @user.id
    redirect_to :action => 'show'
  end

  def show
    @profile = User.find_by(params[:id])
  end

end

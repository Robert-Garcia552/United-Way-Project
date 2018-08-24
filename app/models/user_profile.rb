class UserProfile < ApplicationRecord
  belongs_to :user

  def show
    @user = current_user
  end

  def update
  end

end

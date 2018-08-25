class AddIndexToUserProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :user_profile, :user_id, :integer
  end
end

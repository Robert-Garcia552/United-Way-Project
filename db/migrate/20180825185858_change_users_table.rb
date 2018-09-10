class ChangeUsersTable < ActiveRecord::Migration[5.2]

  def change
    drop_table :users, force: :cascade
    drop_table :user_profile
  end

end

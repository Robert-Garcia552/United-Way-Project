class FixTableName < ActiveRecord::Migration[5.2]
  def self.up
    rename_table :add_user_profile_to_users, :user_profile
  end
  def self.down
    rename_table :add_user_profile_to_users, :user_profile
  end
end

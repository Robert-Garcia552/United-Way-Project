class CreateAddUserProfileToUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :add_user_profile_to_users do |t|
      t.string :first_name, null: false
      t.string :middle_name
      t.string :last_name, null: false
      t.string :suffix
      t.string :email, null: false
      t.datetime :birthdate, null: false
      t.string :employer
      t.integer :phone_number
      t.string :gender

      t.timestamps
    end
  end
end

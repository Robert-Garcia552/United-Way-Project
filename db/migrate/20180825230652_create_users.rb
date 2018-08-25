class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string "first_name", null: false
      t.string "middle_name"
      t.string "last_name", null: false
      t.string "suffix"
      t.datetime "birthdate", null: false
      t.string "employer"
      t.integer "phone_number"
      t.string "gender"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "user_id"

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
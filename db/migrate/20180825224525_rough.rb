class Rough < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string "first_name", null: false
      t.string "middle_name"
      t.string "last_name", null: false
      t.string "suffix"
      t.string "email", null: false
      t.datetime "birthdate", null: false
      t.string "employer"
      t.integer "phone_number"
      t.string "gender"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "user_id"
    end
  end
end

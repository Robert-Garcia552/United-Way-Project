class Busers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string "first_name", null: false
      t.string "middle_name"
      t.string "last_name", null: false
      t.string "email", null: false
      t.string "password_digest", null: false
      t.integer "user_id"
    end
  end
end

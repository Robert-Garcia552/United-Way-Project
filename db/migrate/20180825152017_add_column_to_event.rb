class AddColumnToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :date, :string
    add_column :events, :location, :string
    add_column :events, :street_address, :string
    add_column :events, :city, :string
    add_column :events, :state, :string
    add_column :events, :zip, :string
  end
end

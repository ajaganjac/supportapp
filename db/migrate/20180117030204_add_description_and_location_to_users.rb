class AddDescriptionAndLocationToUsers < ActiveRecord::Migration[5.1]
 def change
    add_column :users, :description, :string
    add_column :users, :location, :string
  end
end

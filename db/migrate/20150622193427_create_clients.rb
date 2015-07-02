class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :number_of_children
      t.string :bio
      t.string :photo_url
      t.string :city
      t.string :phone_number

      t.timestamps null: false
    end
  end
end

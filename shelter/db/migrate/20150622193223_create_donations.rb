class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :amount
      t.integer :transaction_id
      t.integer :user_id
      t.integer :campaign_id

      t.timestamps null: false
    end
  end
end

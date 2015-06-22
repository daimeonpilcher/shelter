class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.integer :bed_amt
      t.integer :amount_goal
      t.string :night_date

      t.timestamps null: false
    end
  end
end

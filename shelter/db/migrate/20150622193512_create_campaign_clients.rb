class CreateCampaignClients < ActiveRecord::Migration
  def change
    create_table :campaign_clients do |t|
      t.integer :campaign_id
      t.integer :client_id

      t.timestamps null: false
    end
  end
end

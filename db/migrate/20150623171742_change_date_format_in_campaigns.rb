class ChangeDateFormatInCampaigns < ActiveRecord::Migration
  def change
  	change_column :campaigns, :night_date,  'date USING CAST(night_date AS date)'
  end
end

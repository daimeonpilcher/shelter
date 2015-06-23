class ChangeDateFormatInCampaigns < ActiveRecord::Migration
  def change
  	change_column :campaigns, :night_date,  :date
  end
end

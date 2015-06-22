class CampaignClient < ActiveRecord::Base
	belongs_to :campaign
	belongs_to :client
end

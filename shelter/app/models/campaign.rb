class Campaign < ActiveRecord::Base
	has_many :donations
	has_many :campaign_clients
end

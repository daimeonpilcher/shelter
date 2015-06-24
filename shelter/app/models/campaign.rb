class Campaign < ActiveRecord::Base
	has_many :donations
	has_many :campaign_clients
	has_many :clients, through: :campaign_clients
	has_many :users, through: :donations
end

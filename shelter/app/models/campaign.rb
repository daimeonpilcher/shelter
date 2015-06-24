class Campaign < ActiveRecord::Base
	has_many :donations
	has_many :campaign_clients
	has_many :clients, through: :campaign_clients
	has_many :users, through: :donations

	def amount_needed
		amount_goal
	end

	def amount_raised
		Donation.count * 25 #set fixed amount of $25 per room for now
	end

	def percentage_raised
		(amount_raised / amount_needed) * 100
	end

end

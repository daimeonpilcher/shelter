class Campaign < ActiveRecord::Base
	validates :night_date, uniqueness: true
	has_many :donations
	has_many :campaign_clients
	has_many :clients, through: :campaign_clients
	has_many :users, through: :donations

	def self.current_campaign
		where(night_date: Date.today).take
	end

	def amount_needed
		(amount_goal + 500) * clients.count #fix amount_goal in seed data, remove 500 when done
	end

	def amount_raised
		donations.count * 2500.00 #set fixed amount of $25 per room for now
	end

	def percentage_raised
		((amount_raised / amount_needed) * 100).round
	end

	def rooms_funded
		donations.count
	end

	def rooms_still_needed
		clients.length - rooms_funded
	end

	def amount_still_needed
		(amount_needed - amount_raised).round / 100
	end

end

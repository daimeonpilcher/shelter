class DonationsController < ApplicationController
	def index
		@donations = current_user.donations
	end

	def new
		@donation = Donation.new
	end

	def create
		donation = current_user.donations.new(donation_params)
		if donation.save
			redirect_to user_path(current_user)
		else
			redirect_to new_donation_path
		end
	end

	def show
		@donation = Donation.find(params[:id])
	end

	private
	def donation_params
		white_list = [
						:user_id, :campaign_id, 
						:amount, :transaction_id
						]
		params.require.(:donation).permit(*white_list)
	end

	def set_user_donation
		@donation = current_user.donations.find(params[:id])
	end

end

class DonationsController < ApplicationController
	 def index
	 	@donations = current_user.donations
	 	@amount = 2500
	 	@user = current_user || User.new

	end

	def new
		# @donation = Donation.new
		@user = current_user || User.new
	end

	def create
		  	
  		@amount = 2500 # Amount in cents

      	begin

		  	customer = Stripe::Customer.create(
	    		:email => 'example@stripe.com',
	    		:card  => params[:stripeToken]
	  		)

	  		charge = Stripe::Charge.create(
	    		:customer    => customer.id,
	    		:amount      => @amount,
	    		:description => 'Rails Stripe customer',
	    		:currency    => 'usd'
	  		)
		
		rescue Stripe::CardError => e
  			flash[:error] = e.message
  		end

  		current_amount = charge.amount
  		current_transaction = charge.id #make this the charge.receipt_number
  		new_donation = Donation.create(
  			:user_id => current_user.id,
  			:campaign_id => Campaign.current_campaign.id,
  			:amount => current_amount,
  			:transaction_id => current_transaction 
  		)

  		redirect_to donations_path  		
	
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

class DonationsController < ApplicationController
	def index
		@donations = current_user.donations
	end

	def new
		# @donation = Donation.new
	end

	def create
		  	# Amount in cents
  		@amount = 500

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

  		current_amount = charge.amount
  		current_transaction = charge.id
  		new_donation = Donation.create(
  			:user_id => current_user.id,
  			:amount => current_amount,
  			:transaction_id => current_transaction
  		)
		puts "Printing donation amount"
		puts new_donation.amount
		puts new_donation.user_id


		rescue Stripe::CardError => e
  		flash[:error] = e.message
  		redirect_to charges_path
	
	
	#donation.transaction_id = charge.receipt_number
	
	
	end

	# donation = current_user.donations.new(donation_params)
	# 	if donation.save
	# 		redirect_to user_path(current_user)
	# 	else
	# 		redirect_to new_donation_path
	# 	end
	# end

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

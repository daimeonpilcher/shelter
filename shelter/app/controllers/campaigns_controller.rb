class CampaignsController < ApplicationController
	def show
		@campaign = Campaign.find(params[:id])
	end

	def index
		# @campaigns = Campaign.all
		@campaign = Campaign.where(night_date: Date.today)
	
	end


end

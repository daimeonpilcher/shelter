class CampaignsController < ApplicationController
	
	def index
		@campaign = Campaign.where(night_date: Date.today).take
	end

	def show
		@campaign = Campaign.find(params[:id])
	end

end

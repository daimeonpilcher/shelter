class CampaignsController < ApplicationController
	
	def index
		@campaign = Campaign.where(night_date: Date.today).take
		@user = current_user || User.new
	end

	def show
		@campaign = Campaign.find(params[:id])
	end

end

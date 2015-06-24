class CampaignsController < ApplicationController
	def show
		@client = Client.find(params[:id])
	end
end

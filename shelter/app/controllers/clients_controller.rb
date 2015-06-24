class ClientsController < ApplicationController
	
	def index
		render :index
	end

	def show
		@client = Client.find(params[:id])
	end
end

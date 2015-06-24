class ClientsController < ApplicationController
	
	def index
		render :index
	end

	def show
		@client = Client.find(params[:id])
	end

	def index
		@clients = Client.all
	end
end


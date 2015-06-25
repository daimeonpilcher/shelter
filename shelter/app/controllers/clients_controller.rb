class ClientsController < ApplicationController

	def show
		@client = Client.find(params[:id])
		@user = current_user || User.new
	end

	def index
		@clients = Client.all
		@user = current_user || User.new
	end
end


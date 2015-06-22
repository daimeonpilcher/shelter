class SessionsController < ApplicationController
	def new
		@user = User.new
	end

	def create
		user_params = params.require(:user).permit(:email, :password)
		@user = User.confirm(user_params)
		if @user
			login(@user)
			flash[:success] = "Successful login."
			redirect_to user_path(current_user)
		else
			flash[:error] = "Invalid email address or password.  Please try again."
			redirect_to welcome_path
		end
	end

	def destroy
		logout
		redirect_to welcome_path
	end

	private
	def login_params
		user= params.require(:user)
		[user[:email], user[:password]]
	end
end

class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def profile
		redirect_to user_path(current_user)
	end

	def create
		user_params = params.require(:user).permit(:first_name, :last_name, :email, :password, :city)
		@user = User.new(user_params)
		if @user.save
			login @user
			flash[:success] = "Sign up successful. Welcome to the Shelter App!"
			redirect_to user_path(current_user)
		else
			flash[:danger] = "Account already exists. Please try again."
			redirect_to welcome_path
		end
	end

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		if current_user == @user
    	else
      		flash[:warning] = "Sorry, you can only view your own profile. Bummer, we know."
      		redirect_to user_path(current_user)
    	end
	end

	def edit
		@user = User.find(params[:id])
		if current_user == @user
    	else
      		flash[:warning] = "Sorry, you can only edit your own profile. Nice try, though."
      		redirect_to user_path(current_user)
    	end
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			redirect_to user_path(current_user)
		else
			redirect_to edit_user_path(current_user)
		end
	end

	def destroy
		@user.destroy()
	end

	private
	def set_user
		@user = current_user
	end

	def user_params
		white_list = [
						:email, :email_confirmation, 
						:password, :password_confirmation, 
						:first_name, :last_name, :city
						]
		params.require(:user).permit(*white_list)
	end

end

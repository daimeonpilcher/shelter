class User < ActiveRecord::Base
	validates :email, confirmation: true
	has_secure_password

	has_many :donations, dependent: :destroy

	def self.confirm(params)
		@user = User.find_by{email: params[:email]}
		@user.try(:authenticate, params[:password])
	end

end

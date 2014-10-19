class UsersController < ApplicationController
	def redirect
		@user = User.find_by_email(params[:email])
		puts "==================================="
		puts "I'm here"
		p @user
		p params
		puts "==================================="
		# user exists
		if @user.password == params[:password]
			if @user.type == "Coder"
				redirect_to coder_path(@user)
			else
				# redirect_to somewhere else
			end
		else # user doesn't exist

		end
	end
end
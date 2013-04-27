class StaticPagesController < ApplicationController
	def welcome
		@math = 100*100
		@me = "Meghan"
		@last_user_name = User.last.name
		@last_user_email = User.last.email
		@new_user = User.new
	end

	def create
		# server messages
		puts "**********************"
		puts params
		puts "**********************"

		# create code
		@new_user = User.new(params[:user])
		if @new_user.save
			flash[:success] = "New user created!"
			redirect_to root_url
		else
			flash[:error] = "Tragedy! User wasn't created."
			redirect_to root_url
  		end
	end
end
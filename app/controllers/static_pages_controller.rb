class StaticPagesController < ApplicationController
	def welcome
		@math = 100*100
		@me = "Meghan"
	end
end
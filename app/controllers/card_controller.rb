class CardController < ApplicationController

	def show
		@card = Card.find_by( set_sym: params[:set_sym] )
	end

	def index
		@cards = Card.all
	end

end
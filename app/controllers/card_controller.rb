class CardController < ApplicationController

	@cards = Card.all

	def show
		@card = Card.find_by( set_sym: params[:set_sym] )
	end
	

	def index
		@cards = Card.complex_query(params)
	end
	
end

class CardController < ApplicationController

	@cards = Card.all

	def show
		@card = Card.find_by( set_sym: params[:set_sym] )
	end
	

	# def index
 #  		if params[:search]
 #    		@cards = Card.search(params[:search])
 #  		else
 #    		@cards = Card.all
 #  		end
	# end
	

	# def search
 #  		@cards = Card.search(params[:search])
	# end


	def index
		@search = Card.search(params[:q])
		@cards = @search.result
	end
end

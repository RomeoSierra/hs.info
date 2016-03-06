class CardController < ApplicationController

	@cards = Card.all

	def show
		@card = Card.find_by( set_sym: params[:set_sym] )
	end
	

	def index
		@cards = Card.complex_query(params)


		# when query_hash.present?

  # 		when params[:search].present?
  #   		@cards = Card.search(params[:search])
  # 		else
  #   		@cards = Card.all
  # 		end
	end
	
end

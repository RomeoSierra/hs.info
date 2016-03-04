class CardController < ApplicationController

	@cards = Card.all

	def show
		@card = Card.find_by( set_sym: params[:set_sym] )
	end
	

	def index
  		if params[:search]
    		@cards = Card.search(params[:search])
  		else
    		@cards = Card.all
  		end
	end
	

	def search
  		@cards = Card.search(params[:search])
	end


	def complex_search(q_name, q_set, q_rarity, q_align, q_type, q_subtype, q_cost_val, q_cost_mod, q_power_val, q_power_mod, q_toughness_val, q_toughness_mod, q_card_text, q_wild_legal, q_kraken_legal)
		@q_results = Card.all

		if q_name.present?

		else
			
		end

	end
end

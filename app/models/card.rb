class Card < ActiveRecord::Base

	enum card_type: [ :minion, :weapon, :spell , :power ]

	enum align: [ :druid, :hunter, :mage, :paladin, :priest, :rogue, :shaman, :warlock, :warrior, :neutral ]

	enum rarity: [ :basic, :common, :rare, :epic, :legendary ]

	# def get(q)
	# 	@results = []
	# 	where Card.card_name.contsins(q) => @results
	# 	return @results
	# end

	def self.search(q)
  		where("card_name like ?", "%#{q}%") 
	end

	

end

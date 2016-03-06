class Card < ActiveRecord::Base

	enum card_type: [ :minion, :weapon, :spell , :power ]

	enum align: [ :druid, :hunter, :mage, :paladin, :priest, :rogue, :shaman, :warlock, :warrior, :neutral ]

	enum rarity: [ :basic, :common, :rare, :epic, :legendary ]


	def self.search(q)
  		where("card_name like ?", "%#{q}%") 
	end

	def self.complex_query(query_hash) 

		q_results = Card.all

	# 	results = results.where{ "name like Q", query_hash[:q_name] } if queryHash[:q_name].present?
	# 	results = resulsaf

		return q_results
	end

	
end

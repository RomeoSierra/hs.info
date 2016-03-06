class Card < ActiveRecord::Base

	enum card_type: [ :minion, :weapon, :spell , :power ]

	enum align: [ :druid, :hunter, :mage, :paladin, :priest, :rogue, :shaman, :warlock, :warrior, :neutral ]

	enum rarity: [ :basic, :common, :rare, :epic, :legendary ]


	# def self.search(q)
 	#  		where("card_name like ?", "%#{q}%") 
	# end

	def self.complex_query(query_hash) 

		q_results = Card.all

		q_results = q_results.where(independent: query_hash[:q_collect]) if :q_collect.present?

		q_results = q_results.where("card_name like ?", "%#{query_hash[:q_name]}%") if query_hash[:q_name].present?

		q_results = q_results.where(set: query_hash[:q_set]) if query_hash[:q_set].present?

		q_results = q_results.where(rarity: query_hash[:q_rarity]) if query_hash[:q_rarity].present?

		q_results = q_results.where(align: query_hash[:q_align]) if query_hash[:q_align].present?

		q_results = q_results.where(card_type: query_hash[:q_type]) if query_hash[:q_type].present?

		q_results = q_results.where(subtype: query_hash[:q_subtype]) if query_hash[:q_subtype].present?

		q_results = q_results.where("card_text like ?", "%#{query_hash[:q_rules_text]}%") if query_hash[:q_rules_text].present?

		# q_results = q_results.where(wild_legal: query_hash[:q_wild_legal]) if :q_wild_legal.present?

		# q_results = q_results.where(kraken_legal: query_hash[:q_kraken_legal].present?) if query_hash[:q_kraken_legal].present?

		return q_results
	end

	
end

class Card < ActiveRecord::Base

	enum card_type: [ :minion, :weapon, :spell , :power ]

	enum align: [ :druid, :hunter, :mage, :paladin, :priest, :rogue, :shaman, :warlock, :warrior, :neutral ]

	enum rarity: [ :basic, :common, :rare, :epic, :legendary ]


	def self.search(q)
  		where("card_name like ?", "%#{q}%") 
	end

	# def results
	# 	@results ||= find_cards
	# end


	# private

	# def find_cards
	# 	Card.find(:all, :conditions => conditions)
	# end

	# def card_name_conditions
	# 	["card.card_name LIKE ?", "%#{keywords}%"] unless keywords.blank?
	# end

	# def align_conditions
	# 	["card.align LIKE ?", "%#{q_align}%"] unless q_align.blank? #allow selecting multiple, return cards that match any
	# end

	# def rarity_conditions
	# 	["card.align LIKE ?", "%#{q_rarity}%"] unless q_rarity.blank? #allow selecting multiple, return cards that match any
	# end

	# def set_conditions
	# 	["card.set LIKE ?", "%#{q_set}%"] unless q_set.blank? #allow selecting multiple, return cards that match any
	# end

	# def type_conditions
	# 	["card.type LIKE ?", "%#{q_type}%"] unless q_type.blank? #allow selecting multiple, return cards that match any
	# end

	# def subtype_conditions
	# 	["card.subtype LIKE ?", "%#{q_subtype}%"] unless q_subtype.blank? #allow selecting multiple, return cards that match any
	# end

	# def cost_conditions
	# 	["card.cost LIKE ?", q_cost] unless q_cost.blank? #need to figure out how to handle equivilancy operators
	# end

	# def power_conditions
	# 	["card.power LIKE ?", q_power] unless q_power.blank? #need to figure out how to handle equivilancy operators, also how does this handle nil?
	# end

	# def toughness_conditions
	# 	["card.toughness LIKE ?", q_toughness] unless q_toughness.blank? #need to figure out how to handle equivilancy operators, also how does this handle nil?
	# end

	# def rules_text_conditions
	# 	["card.card_text LIKE ?", "%#{q_rules_text}%"] unless q_rules_text.blank?
	# end

	# def collectible_conditions
	# 	["card.independent LIKE ?", true] unless exclude_depentent.blank?
	# end

	# # def flavor_text_conditions
	# # 	["card.flavor_text LIKE ?", "%#{q_flavor_text}%"] unless q_flavor_text.blank?
	# # end

	# def conditions
 #  		[conditions_clauses.join(' AND '), *conditions_options]
	# end

	# def conditions_clauses
	# 	conditions_parts.map { |condition| condition.first }
	# end

	# def conditions_options
	# 	conditions_parts.map { |condition| condition[1..-1] }.flatten
	# end

	# def conditions_parts
	# 	private_methods(false).grep(/_conditions$/).map { |m| send(m) }.compact
	# end

end

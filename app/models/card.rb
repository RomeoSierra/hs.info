class Card < ActiveRecord::Base

	enum card_type: [ :minion, :weapon, :spell , :power ]

	enum align: [ :druid, :hunter, :mage, :paladin, :priest, :rogue, :shaman, :warlock, :warrior, :neutral ]

	enum rarity: [ :basic, :common, :rare, :epic, :legendary ]

end

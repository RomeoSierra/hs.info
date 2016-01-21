# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Card.create(set_sym: "cla031", card_name: "Ice Lance", align: :mage, rarity: :common, set: "Classic", card_type: :spell, subtype: nil, cost: 1, power: nil, toughness: nil, card_text: "Freeze a character. If it was already Frozen, deal 4 damage instead.", flavor_text: "The trick is not to break the lance. Otherwise, you have \"Ice Pieces.\" Ice Pieces aren't as effective.", image: "image URL TK", golden_image: "golden image URL TK", artist: "Alex Horley Orlandelli", independent: true)

Card.create(set_sym: "nax009", card_name: "Death's Bite", align: :warrior, rarity: :common, set: "Naxxramas", card_type: :weapon, subtype: nil, cost: 4, power: 4, toughness: 2, card_text: "Deathrattle: Deal 1 damage to all minions.", flavor_text: "\"Take a bite outta Death.\" -McScruff the Deathlord", image: "image TK", golden_image: "golden image TK", artist: "Jim Nelson", independent: true)

Card.create(set_sym: "bas098", card_name: "Bloodfen Raptor", align: :neutral, rarity: :basic, set: "Basic", card_type: :minion, subtype: "Beast", cost: 2, power: 3, toughness: 2, card_text: nil, flavor_text: "\"Kill 30 raptors.\" -Hemet Nesingwary", image: "image TK", golden_image: "golden image TK", artist: "Dan Brereton", independent: true)
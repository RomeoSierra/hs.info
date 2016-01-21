class AddNotesAndSubcards < ActiveRecord::Migration
  def change
  	add_column(:cards, :created_cards, :string)
  	add_column(:cards, :trivia, :string)
  end
end

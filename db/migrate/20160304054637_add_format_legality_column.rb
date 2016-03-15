class AddFormatLegalityColumn < ActiveRecord::Migration
  def change
  	add_column(:cards, :legality, :integer)
  end
end

class MoreSpecificLegalityVals < ActiveRecord::Migration
  def change
  	add_column(:cards, :wildlegal, :boolean)
  	add_column(:cards, :krakenlegal, :boolean)
  end
end

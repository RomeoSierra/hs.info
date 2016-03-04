class CleanUpUselessColumn < ActiveRecord::Migration
  def change
  		remove_column(:cards, :legality, :integer)
  		remove_column(:cards, :image, :string)
  		remove_column(:cards, :golden_image, :string)
  end
end
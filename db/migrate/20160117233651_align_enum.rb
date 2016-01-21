class AlignEnum < ActiveRecord::Migration
  def change
  	change_column :cards, :align,  :integer
  	change_column :cards, :rarity,  :integer
  end
end

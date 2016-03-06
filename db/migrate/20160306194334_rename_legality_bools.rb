class RenameLegalityBools < ActiveRecord::Migration
  def change
  	rename_column :cards, :wildlegal, :wild_legal
  	rename_column :cards, :krakenlegal, :kraken_legal
  end
end

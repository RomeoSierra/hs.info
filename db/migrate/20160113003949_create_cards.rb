class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
    	t.string :set_sym, unique: true
    	t.string :card_name
    	t.string :align
    	t.string :rarity
    	t.string :set
    	t.integer :card_type
    	t.string :subtype
    	t.integer :cost
    	t.integer :power
    	t.integer :toughness
    	t.string :card_text
    	t.string :flavor_text
    	t.string :image
    	t.string :golden_image
        t.string :artist
    	t.boolean :independent
    end
  end
end

class CreateCheats < ActiveRecord::Migration[6.1]
  def change
    create_table :cheats do |t|

      t.integer :character_id
      t.integer :tag_id
      t.integer :title_id
      t.integer :comment_id
      t.integer :information_id
      t.text :cheat_detail
      t.string :recommendation_character
      t.integer :difficulty

      t.timestamps
    end
  end
end

class CreateTitles < ActiveRecord::Migration[6.1]
  def change
    create_table :titles do |t|
      
      t.integer :cheat_id
      t.integer :platform_id
      t.integer :information_id
      t.integer :character_id
      t.integer :bulletin_board_id
      t.integer :comment_id
      t.integer :tag_id
      t.string :name
      t.boolean :is_active

      t.timestamps
    end
  end
end

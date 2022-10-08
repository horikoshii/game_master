class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|

      t.text :comment_content
      t.text :body, null: false
      t.integer :customer_id
      t.integer :title_id
      t.integer :cheat_id
      t.integer :bulletin_board_id
      t.integer :information_id
      t.integer :character_id
      t.boolean :is_active

      t.timestamps
    end
  end
end

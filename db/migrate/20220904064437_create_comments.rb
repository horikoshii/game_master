class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|

      t.text :comment_content
      t.text :body, null: false
      t.references :customer, foreign_key: true
      t.references :title, foreign_key: true
      t.references :cheat, foreign_key: true
      t.references :bulletin_board, foreign_key: true 
      t.integer :information_id
      t.integer :character_id
      t.boolean :is_active

      t.timestamps
    end
  end
end

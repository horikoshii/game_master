class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|

      t.text :comment_content
      t.references :customer, foreign_key: true
      t.references :title, foreign_key: true
      t.integer :cheat_id
      t.integer :information_id
      t.integer :character_id
      t.boolean :is_active

      t.timestamps
    end
  end
end

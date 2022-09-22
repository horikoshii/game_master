class CreateCheats < ActiveRecord::Migration[6.1]
  def change
    create_table :cheats do |t|

      t.integer :character_id
      t.integer :tag_id
      t.integer :title_id
      t.integer :comment_id
      t.integer :information_id
      t.string :name
      t.text :cheat_detail
      t.float :evaluation, null: false, default: 0
      t.text :post_content
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end

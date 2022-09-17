class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|

      t.integer :cheat_id
      t.integer :tag_id
      t.integer :title_id
      t.integer :comment_id
      t.integer :information_id
      t.string :name
      t.integer :IFF_method
      t.integer :status
      t.string :skill
      t.text :skill_detail
      t.integer :attribution_method
      t.integer :evaluation
      t.boolean :is_active

      t.timestamps
    end
  end
end

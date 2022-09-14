class CreateInformation < ActiveRecord::Migration[6.1]
  def change
    create_table :information do |t|

      t.integer :character_id
      t.integer :tag_id
      t.integer :title_id
      t.integer :comment_id
      t.integer :cheat_id
      t.integer :type_method
      t.string :name
      t.text :information_detail
      t.boolean :is_active

      t.timestamps
    end
  end
end

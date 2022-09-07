class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      
      t.integer :cheat_id
      t.integer :title_id
      t.integer :information_id
      t.integer :character_id
      t.boolean :is_active

      t.timestamps
    end
  end
end

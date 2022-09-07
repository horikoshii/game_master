class CreatePlatforms < ActiveRecord::Migration[6.1]
  def change
    create_table :platforms do |t|
      
      t.integer :title_id
      t.integer :tag_id
      t.string :name
      t.boolean :is_active

      t.timestamps
    end
  end
end

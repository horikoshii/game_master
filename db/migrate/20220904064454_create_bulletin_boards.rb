class CreateBulletinBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :bulletin_boards do |t|
      
      t.integer :title_id
      t.integer :comment_id
      t.boolean :is_active
      t.string :title, null: false
      t.text :body, null: false
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
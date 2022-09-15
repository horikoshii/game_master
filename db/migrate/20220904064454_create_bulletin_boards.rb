class CreateBulletinBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :bulletin_boards do |t|
      
      t.integer :title_id
      t.integer :comment_id
      t.boolean :is_active

      t.timestamps
    end
  end
end
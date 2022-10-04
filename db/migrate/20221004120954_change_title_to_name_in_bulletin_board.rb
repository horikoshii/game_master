class ChangeTitleToNameInBulletinBoard < ActiveRecord::Migration[6.1]
  def up
    remove_column :bulletin_boards, :title, :string
    add_column :bulletin_boards, :name, :string
  end
  
  def down
    remove_column :bulletin_boards, :name, :string
    add_column :bulletin_boards, :title, :string
  end
end

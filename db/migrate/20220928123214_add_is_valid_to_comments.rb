class AddIsValidToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :is_valid, :boolean,default: true, null: false
  end
end

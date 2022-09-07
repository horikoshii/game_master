class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
      t.string :name
      t.string :email
      t.string :encrypted_password
      t.boolean :is_active

      t.timestamps
    end
  end
end

class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|

      t.string :email
      t.string :encrypted_password
      t.boolean :is_active

      t.timestamps
    end
  end
end

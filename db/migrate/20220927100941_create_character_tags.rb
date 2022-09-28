class CreateCharacterTags < ActiveRecord::Migration[6.1]
  def change
    create_table :character_tags do |t|
      t.references :character, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end

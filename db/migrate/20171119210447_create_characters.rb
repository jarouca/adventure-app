class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.string :hair_color, null: false
      t.string :eye_color, null: false
      t.string :height, null: false
      t.string :weight, null: false
      t.string :gender
      t.integer :age, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end

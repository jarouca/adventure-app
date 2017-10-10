class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.string :height, null: false
      t.string :string, null: false
      t.string :weight, null: false
      t.string :string, null: false
      t.string :gender, null: false
      t.string :string, null: false
      t.string :hair_color, null: false
      t.string :string, null: false
      t.string :eye_color, null: false
      t.string :string, null: false
      t.string :age, null: false
      t.string :string, null: false
    end
  end
end

class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name,g null: false
      t.integer :age
      t.string :gender
      t.boolean :alive, default: true
      t.string :hair_color
      t.string :eye_color

      t.timestamps
    end
  end
end

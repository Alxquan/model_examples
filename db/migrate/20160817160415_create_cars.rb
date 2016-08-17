class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :make, null: false
      t.string :model, null: false
      t.string :year
      t.string :color
      t.boolean :runs, default: true
      t.belongs_to :person
      
      t.timestamps
    end
  end
end

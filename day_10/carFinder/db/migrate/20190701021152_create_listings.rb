class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :picture
      t.string :make
      t.string :model
      t.integer :year
      t.decimal :kilometres
      t.float :price
      t.string :color
      t.date :registration
      t.text :description
      t.string :fuel_type
      t.string :transmission_type
      t.text :location

      t.timestamps
    end
  end
end

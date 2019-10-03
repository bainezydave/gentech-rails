class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :post_code
      t.string :state
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end

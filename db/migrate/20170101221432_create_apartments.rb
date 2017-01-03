class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :address_line1
      t.string :address_line2
      t.text :description
      t.integer :bedrooms
      t.integer :bathrooms
      t.boolean :parking
      t.boolean :gym
      t.integer :price
      t.string :address_suburb
      t.integer :address_postcode
      t.string :address_state

      t.timestamps null: false
    end
  end
end

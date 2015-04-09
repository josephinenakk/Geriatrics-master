class CreatePersonalProperties < ActiveRecord::Migration
  def change
    create_table :personal_properties do |t|
      t.string :property_Nickname
      t.string :address_Line1
      t.string :address_Line2
      t.string :city
      t.string :state
      t.integer :zip
      t.text :notes
      t.string :vehicles
      t.integer :year
      t.string :make
      t.string :model
      t.string :notes_Collectibles_Valuable
      t.text :stem_Description
      t.string :item_Location
      t.text :notes

      t.timestamps
    end
  end
end

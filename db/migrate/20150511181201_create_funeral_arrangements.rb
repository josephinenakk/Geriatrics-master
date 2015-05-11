class CreateFuneralArrangements < ActiveRecord::Migration
  def change
    create_table :funeral_arrangements do |t|
      t.string :organization_name
      t.text :provider_address
      t.string :provider_email
      t.string :provider_phone_number
      t.text :contact_name
      t.text :arrangements_or_celebration_of_life_details

      t.timestamps
    end
  end
end

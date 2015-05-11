class CreateMilitaryHistories < ActiveRecord::Migration
  def change
    create_table :military_histories do |t|
      t.string :branch_of_service
      t.string :active_or_reserve
      t.integer :years_of_service
      t.string :military_contact_name
      t.string :military_contact_phone
      t.string :pension_qualified?
      t.string :pension_or_benefits_phone
      t.string :_number
      t.text :notes

      t.timestamps
    end
  end
end

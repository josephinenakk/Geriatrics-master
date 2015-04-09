class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :firstname
      t.string :lastname
      t.integer :phone_no
      t.string :date_of_birth
      t.string :blood_type
      t.string :allergies_info
      t.string :name_healthcare_proxy
      t.string :organization
      t.text :details_DNR

      t.timestamps
    end
  end
end

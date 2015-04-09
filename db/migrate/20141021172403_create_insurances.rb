class CreateInsurances < ActiveRecord::Migration
  def change
    create_table :insurances do |t|
      t.string :account_Type
      t.integer :account_No
      t.string :account_Holders
      t.string :beneficiary
      t.text :institution_Information
      t.text :document
      t.string :insurance_Card

      t.timestamps
    end
  end
end

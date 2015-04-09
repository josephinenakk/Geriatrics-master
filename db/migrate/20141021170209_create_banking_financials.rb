class CreateBankingFinancials < ActiveRecord::Migration
  def change
    create_table :banking_financials do |t|
      t.integer :social_Security
      t.datetime :date_Of_Birth
      t.string :account_type
      t.integer :account_No
      t.string :account_Holders
      t.string :beneficiary
      t.text :institution_Information

      t.timestamps
    end
  end
end

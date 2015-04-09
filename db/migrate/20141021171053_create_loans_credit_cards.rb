class CreateLoansCreditCards < ActiveRecord::Migration
  def change
    create_table :loans_credit_cards do |t|
      t.string :account_Type
      t.integer :account_Number
      t.string :institution_Information

      t.timestamps
    end
  end
end

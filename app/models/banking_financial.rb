class BankingFinancial < ActiveRecord::Base
  attr_accessible :account_Holders, :account_No, :account_type, :beneficiary, :date_Of_Birth, :institution_Information, :social_Security
  validates_presence_of :account_Holders, :account_No, :account_type, :beneficiary, :date_Of_Birth,:social_Security 
end


class Insurance < ActiveRecord::Base
  belongs_to :user
  attr_accessible :account_Holders, :account_No, :account_Type, :beneficiary, :document, :institution_Information, :insurance_Card
 validates_presence_of :account_Holders, :account_No, :account_Type, :beneficiary, :document, :institution_Information, :insurance_Card
end

class LoansCreditCard < ActiveRecord::Base
  attr_accessible :account_Number, :account_Type, :institution_Information
 validates_presence_of :account_Number, :account_Type, :institution_Information
end

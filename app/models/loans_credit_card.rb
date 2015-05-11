class LoansCreditCard < ActiveRecord::Base
  belongs_to :user
  attr_accessible :account_Number, :account_Type, :institution_Information
 validates_presence_of :account_Number, :account_Type, :institution_Information
end

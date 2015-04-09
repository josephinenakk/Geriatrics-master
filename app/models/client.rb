class Client < ActiveRecord::Base
  attr_accessible :allergies_info, :blood_type, :date_of_birth, :details_DNR, :firstname, :lastname, :name_healthcare_proxy, :organization, :phone_no

  validates_presence_of :allergies_info, :blood_type, :date_of_birth, :details_DNR, :firstname, :lastname, :name_healthcare_proxy, :organization, :phone_no
end



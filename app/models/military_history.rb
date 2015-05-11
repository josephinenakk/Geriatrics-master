class MilitaryHistory < ActiveRecord::Base
  attr_accessible :_number, :active_or_reserve, :branch_of_service, :military_contact_name, :military_contact_phone, :notes, :pension_or_benefits_phone, :pension_qualified?, :years_of_service
end

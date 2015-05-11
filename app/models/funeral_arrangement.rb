class FuneralArrangement < ActiveRecord::Base
  attr_accessible :arrangements_or_celebration_of_life_details, :contact_name, :organization_name, :provider_address, :provider_email, :provider_phone_number
end

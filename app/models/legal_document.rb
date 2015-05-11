class LegalDocument < ActiveRecord::Base
  attr_accessible :do_ot_resuscitate, :health_care_directive, :letter_of_authorization, :location_of_original, :pension_papers, :power_of_attorney, :trust, :will, :wishes
end

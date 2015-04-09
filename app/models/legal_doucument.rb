class LegalDoucument < ActiveRecord::Base
  attr_accessible :do_Not_Resuscitate, :healthcare_Directive, :letter_of_Authorization, :location_of_Original, :pension_Papers, :power_of_Attorney, :trust, :will, :wishes
 validates_presence_of :do_Not_Resuscitate, :healthcare_Directive, :letter_of_Authorization, :location_of_Original, :pension_Papers, :power_of_Attorney, :trust, :will, :wishes
end

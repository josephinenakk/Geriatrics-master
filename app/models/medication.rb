class Medication < ActiveRecord::Base
  belongs_to :user
  attr_accessible :currently_Taking, :dosage, :frequency, :medication_Photo, :name_Of_Medication, :pharmacy, :prescrbing_Physician, :prescription, :special_Instruvtions
 validates_presence_of :currently_Taking, :dosage, :frequency, :medication_Photo, :name_Of_Medication, :pharmacy, :prescrbing_Physician, :prescription, :special_Instruvtions
end

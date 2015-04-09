class MedicalHistory < ActiveRecord::Base
  attr_accessible :comments, :date, :date_Of_Onset, :diagnosis_procedure, :documents, :physician, :updater
 validates_presence_of :comments, :date, :date_Of_Onset, :diagnosis_procedure, :documents, :physician, :updater
end

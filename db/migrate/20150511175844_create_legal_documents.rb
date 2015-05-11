class CreateLegalDocuments < ActiveRecord::Migration
  def change
    create_table :legal_documents do |t|
      t.string :do_ot_resuscitate
      t.string :health_care_directive
      t.string :power_of_attorney
      t.text :will
      t.string :trust
      t.string :wishes
      t.text :letter_of_authorization
      t.text :pension_papers
      t.string :location_of_original

      t.timestamps
    end
  end
end

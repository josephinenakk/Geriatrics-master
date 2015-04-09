class CreateLegalDoucuments < ActiveRecord::Migration
  def change
    create_table :legal_doucuments do |t|
      t.string :do_Not_Resuscitate
      t.string :healthcare_Directive
      t.string :power_of_Attorney
      t.text :will
      t.string :trust
      t.text :wishes
      t.text :letter_of_Authorization
      t.text :pension_Papers
      t.string :location_of_Original

      t.timestamps
    end
  end
end

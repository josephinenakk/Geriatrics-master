class CreateMedicalHistories < ActiveRecord::Migration
  def change
    create_table :medical_histories do |t|
      t.datetime :date
      t.text :updater
      t.text :diagnosis_procedure
      t.datetime :date_Of_Onset
      t.string :physician
      t.text :comments
      t.text :documents

      t.timestamps
    end
  end
end

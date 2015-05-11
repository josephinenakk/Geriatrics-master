class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :Name
      t.text :Address
      t.timestamps
    end
  end
end

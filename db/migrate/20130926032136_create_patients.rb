class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :language
      t.string :physician
      t.string :registered
      t.string :copay_paid
      t.string :insurance_verified
      t.time :scheduled_time
      t.time :arrival_time
      t.boolean :arrived
      t.time :arrival_status

      t.timestamps
    end
  end
end

class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :scheduled_date
      t.datetime :scheduled_time
      t.boolean :arrived, default: false
      t.boolean :left, default: false
      t.string :arrival_status
      t.integer :patient_id

      t.timestamps
    end
  end
end

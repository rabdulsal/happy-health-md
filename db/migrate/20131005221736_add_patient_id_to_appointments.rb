class AddPatientIdToAppointments < ActiveRecord::Migration
  def up
    add_column :appointments, :patient_id, :integer
  end

  def down
    remove_column :appointments, :patient_id, :integer
  end
end

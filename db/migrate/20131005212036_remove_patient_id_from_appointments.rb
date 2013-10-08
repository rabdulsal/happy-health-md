class RemovePatientIdFromAppointments < ActiveRecord::Migration
  def up
  	remove_column :appointments, :patient_id, :integer
  end

  def down
  	add_column :appointments, :patient_id, :integer
  end

  
end

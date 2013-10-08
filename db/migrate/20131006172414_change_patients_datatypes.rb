class ChangePatientsDatatypes < ActiveRecord::Migration
  def up
  	change_table :patients do |t|
	  t.change :arrival_time, :datetime
	  t.change :arrival_status, :float
	  t.change :scheduled_time, :datetime
	  t.change :copay_paid, :boolean, default: false
	  t.change :insurance_verified, :boolean, default: false
	  t.change :registered, :boolean, default: false
	end
  end

  def down
  	change_table :patients do |t|
	  t.change :arrival_time, :time
	  t.change :arrival_status, :time
	  t.change :scheduled_time, :time
	  t.change :copay_paid, :string
	  t.change :insurance_verified, :string
	  t.change :registered, :string
	end
  end
end

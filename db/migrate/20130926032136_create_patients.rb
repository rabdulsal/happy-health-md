class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :language
      t.string :physician
      t.boolean :registered, default: false
      t.boolean :copay_paid, default: false
      t.boolean :insurance_verified, default: false
      t.datetime :scheduled_time
      t.datetime :arrival_time
      t.boolean :arrived, default: false
      t.float :arrival_status
      t.boolean :exit, default: false

      t.timestamps
    end
  end
end 

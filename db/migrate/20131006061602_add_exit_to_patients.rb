class AddExitToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :exit, :boolean, default: false
  end
end

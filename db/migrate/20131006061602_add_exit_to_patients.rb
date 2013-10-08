class AddExitToPatients < ActiveRecord::Migration
  def up
    add_column :patients, :exit, :boolean, default: false
  end

  def down
    remove_column :patients, :exit, :boolean, default: false
  end
end

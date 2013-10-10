class AddDetailsToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :cellphone, :integer
    add_column :patients, :telephone, :integer
    add_column :patients, :email, :string
  end
end

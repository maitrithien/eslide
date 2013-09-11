class CreateAdminRoles < ActiveRecord::Migration
  def change
    create_table :admin_roles do |t|
      t.string :role_id, :unique => true
      t.string :role_name, :unique => true
      t.string :description

      t.timestamps
    end
  end
end

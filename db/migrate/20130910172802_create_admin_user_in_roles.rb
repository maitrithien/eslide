class CreateAdminUserInRoles < ActiveRecord::Migration
  def change
    create_table :admin_user_in_roles do |t|
      t.string :user_ids
      t.string :role_id

      t.timestamps
    end
  end
end

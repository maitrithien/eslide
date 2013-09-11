class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
      t.string :user_id, :unique => true
      t.string :user_name
      t.string :lower_user_name
      t.boolean :is_anonymous

      t.timestamps
    end
  end
end

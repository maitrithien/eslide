class CreateAdminUserMembers < ActiveRecord::Migration
  def change
    create_table :admin_user_members do |t|
      t.string :user_id, :unique => true
      t.string :email, :unique => true
      t.string :password
      t.string :password_black
      t.string :password_salt
      t.boolean :is_locked_out, :default => false
      t.boolean :is_approved, :default => false
      t.datetime :last_login_date
      t.datetime :last_password_changed_date
      t.datetime :last_lock_out_date
      t.string :last_login_at
      t.string :password_question
      t.string :password_answer
      t.string :comment

      t.timestamps
    end
  end
end

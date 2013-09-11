class CreateAdminUserProfiles < ActiveRecord::Migration
  def change
    create_table :admin_user_profiles do |t|
      t.string :user_id, :unique => true
      t.string :image
      t.string :display_name
      t.date :date_of_birth
      t.string :phone_number
      t.string :address
      t.string :yahoo_contact

      t.timestamps
    end
  end
end

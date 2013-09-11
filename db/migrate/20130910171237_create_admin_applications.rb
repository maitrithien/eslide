class CreateAdminApplications < ActiveRecord::Migration
  def change
    create_table :admin_applications do |t|
      t.string :application_id, :unique => true
      t.string :application_name, :unique => true
      t.string :description
      t.string :logo_image
      t.string :slogan

      t.timestamps
    end
  end
end

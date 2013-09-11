class CreateAdminUserRatings < ActiveRecord::Migration
  def change
    create_table :admin_user_ratings do |t|
      t.string :user_id, :unique => true
      t.decimal :count, :default => 0
      t.decimal :total_star, :default => 0
      t.string :peoples

      t.timestamps
    end
  end
end

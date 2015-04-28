class AddAdminToShogunUsers < ActiveRecord::Migration
  def change
    add_column :shogun_users, :admin, :boolean
  end
end

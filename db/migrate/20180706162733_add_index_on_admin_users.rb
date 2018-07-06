class AddIndexOnAdminUsers < ActiveRecord::Migration
  def change
    add_index :users, :admin
  end
end

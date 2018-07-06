class RemoveIndexOnAdminUsers < ActiveRecord::Migration
  def change
    remove_index :users, :admin
  end
end

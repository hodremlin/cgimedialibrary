class AddWebsiteUploaderToWebsite < ActiveRecord::Migration
  def change
    add_column :websites, :website, :string
  end
end

class AddLogoUploaderToLogo < ActiveRecord::Migration
  def change
    add_column :logos, :logo, :string
  end
end

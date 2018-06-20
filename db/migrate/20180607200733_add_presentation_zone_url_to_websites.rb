class AddPresentationZoneUrlToWebsites < ActiveRecord::Migration
  def change
    add_column :websites, :presentation_zone_url, :string
  end
end

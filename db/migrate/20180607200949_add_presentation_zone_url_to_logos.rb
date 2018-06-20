class AddPresentationZoneUrlToLogos < ActiveRecord::Migration
  def change
    add_column :logos, :presentation_zone_url, :string
  end
end

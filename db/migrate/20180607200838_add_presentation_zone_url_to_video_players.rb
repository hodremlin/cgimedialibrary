class AddPresentationZoneUrlToVideoPlayers < ActiveRecord::Migration
  def change
    add_column :video_players, :presentation_zone_url, :string
  end
end

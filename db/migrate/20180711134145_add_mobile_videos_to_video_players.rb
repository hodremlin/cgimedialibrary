class AddMobileVideosToVideoPlayers < ActiveRecord::Migration
  def change
    add_column :video_players, :mobile_video, :string
  end
end

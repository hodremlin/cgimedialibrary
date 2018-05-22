class AddVideoThumbnailToVideoPlayers < ActiveRecord::Migration
  def change
    add_column :video_players, :video_thumbnail, :string
  end
end

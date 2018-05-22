class AddVideoToVideoPlayers < ActiveRecord::Migration
  def change
    add_column :video_players, :video, :string
  end
end

class VideoPlayersController < InheritedResources::Base

  private

    def video_player_params
      params.require(:video_player).permit(:title, :published_at, :vertical, :business_name, :pnotes_id, :video, :video_thumbnail)
    end
end


class VideoPlayersController < ApplicationController

  
  def show
    @video = VideoPlayer.find(params[:id])
    headers['Content-Type'] = 'video/mp4'
    headers['X-Accel-Redirect'] = "#{@video.video.file.file.rpartition('/').last}"
    render nothing: true
  end
end
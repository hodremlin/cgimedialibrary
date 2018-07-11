class VideoPlayer < MediaItem
  include MediaItem::Scoping

  self.table_name = 'video_players'
  acts_as_taggable_on :video_players

  # CarrierWave Uploader
  mount_uploader :video, VideoUploader
  mount_uploader :mobile_video, MobileVideoUploader
  mount_uploader :thumbnail, ThumbnailUploader

  def thumbnail_url
    thumbnail
  end
  
  def thumbnail_button
    "play.png"
  end
end


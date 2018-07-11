class Reviewtube < MediaItem
  include MediaItem::Scoping

  self.table_name = 'reviewtubes'

  # CarrierWave Uploader
  mount_uploader :reviewtube, ReviewtubeUploader
  mount_uploader :mobile_video, MobileVideoUploader
  mount_uploader :thumbnail, ThumbnailUploader

  def thumbnail_url
    thumbnail
  end
  
  def thumbnail_button
    "play.png"
  end
end

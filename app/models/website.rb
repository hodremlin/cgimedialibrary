class Website < MediaItem
  include MediaItem::Scoping

  self.table_name = 'websites'

  # CarrierWave Uploader
  mount_uploader :thumbnail, ThumbnailUploader
  mount_uploader :website, WebsiteUploader

  def thumbnail_button
    "plus.png"
  end
end

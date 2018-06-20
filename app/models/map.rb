class Map < MediaItem
  include MediaItem::Scoping

  self.table_name = 'maps'

  # CarrierWave Uploader
  mount_uploader :map, MapUploader
  mount_uploader :thumbnail, ThumbnailUploader

  def thumbnail_url
    thumbnail
  end
  
  def thumbnail_button
    "play.png"
  end
end
class Banner < MediaItem
  include MediaItem::Scoping

  self.table_name = 'banners'

  # CarrierWave Uploader
  mount_uploader :thumbnail, ThumbnailUploader
  mount_uploader :banner, BannerUploader

  def thumbnail_button
    "plus.png"
  end
end


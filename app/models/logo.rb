class Logo < MediaItem
  include MediaItem::Scoping

  self.table_name = 'logos'

  # CarrierWave Uploader
  mount_uploader :thumbnail, ThumbnailUploader
  mount_uploader :logo, LogoUploader

  def thumbnail_button
    "plus.png"
  end  
end

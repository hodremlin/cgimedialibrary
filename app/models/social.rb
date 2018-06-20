class Social < MediaItem
  include MediaItem::Scoping

  self.table_name = 'socials'

  # CarrierWave Uploader
  mount_uploader :thumbnail, ThumbnailUploader
  mount_uploader :social_post, SocialUploader

  def thumbnail_button
    "plus.png"
  end
end

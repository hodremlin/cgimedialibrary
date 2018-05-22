class VideoPlayer < ActiveRecord::Base
  belongs_to :user

  acts_as_taggable
  
# CarrierWave Uploader
  mount_uploader :video, VideoUploader
  mount_uploader :video_thumbnail, VideoThumbnailUploader
   
  scope :published, ->{where.not(published_at: nil)}
  scope :unpublished, ->{where(published_at: nil)}
end

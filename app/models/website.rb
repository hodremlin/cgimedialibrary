class Website < ActiveRecord::Base
  belongs_to :user

  acts_as_taggable
  
# CarrierWave Uploader
  mount_uploader :website_thumbnail, WebsiteThumbnailUploader
   
  scope :published, ->{where.not(published_at: nil)}
  scope :unpublished, ->{where(published_at: nil)}
end

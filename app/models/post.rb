class Post < ActiveRecord::Base
  belongs_to :user
  
  acts_as_taggable
  
  scope :published, ->{where.not(published_at: nil)}
  scope :unpublished, ->{where(published_at: nil)}
end

# TODO: Move this back into the MediaItem class if Rails ever fixes inherited scopes
class MediaItem < ActiveRecord::Base
  module Scoping
    def self.included(base)
      base.class_eval do
        scope :published, ->{ where.not(published_at: nil) }
        scope :unpublished, ->{ where(published_at: nil) }
        
        scope :featured, lambda { |featured|
          return unless featured.to_s.casecmp('true').zero?
          
          where(featured: true)
        }
        
        scope :with_category, lambda { |category|
          return if category.blank?
          
          joins(vertical: :category).where('vertical_categories.title = ?', category)
        }
      
        scope :with_vertical, lambda { |vertical|
          return if vertical.blank?
          
          joins(:vertical).where('verticals.title = ?', vertical)
        }
        
        scope :with_tags, lambda { |tags|
          return if (tags.is_a?(Array) && tags.empty?) || tags.blank?
          
          tagged_with(tags)
        }

        scope :filtered, lambda { |category, vertical, tags, featured|
          with_category(category).with_vertical(vertical).with_tags(tags).featured(featured)
        }

        scope :favorited_by, lambda { |user|
          joins(:favoritings).where("favorites.favorited_type = ? AND favorites.user_id = ?", name, user.id)
        }
      end
    end
  end
end

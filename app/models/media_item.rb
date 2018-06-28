class MediaItem < ActiveRecord::Base
  self.abstract_class = true

  belongs_to :user
  belongs_to :vertical
  has_one :category, through: :vertical, class_name: 'VerticalCategory', foreign_key: :vertical_category_id
  has_many :favoritings, class_name: 'Favorite', foreign_key: :favorited_id

  acts_as_taggable

  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end
end

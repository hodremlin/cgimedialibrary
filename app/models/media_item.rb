class MediaItem < ActiveRecord::Base
  self.abstract_class = true
  self.per_page = 20

  belongs_to :user
  belongs_to :vertical
  has_one :category, through: :vertical, class_name: 'VerticalCategory', foreign_key: :vertical_category_id
  has_many :favoritings, class_name: 'Favorite', foreign_key: :favorited_id

  acts_as_taggable

  def self.search(search)
    tables = descendants
    where("title LIKE ?", "%#{search}%")
  end
  
  def slug
    title.parameterize(separator: '_')
  end
  
  def as_json(opts = {})
    super(
      include: {
        category: { only: :title },
        vertical: { only: :title },
        user: { only: :username }
      }
    )
  end
end
